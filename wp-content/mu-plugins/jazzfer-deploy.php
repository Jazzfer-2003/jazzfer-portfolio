<?php
/**
 * Jazzfer Deploy Receiver — must-use plugin
 *
 * Lets the GitHub Actions workflow apply database content updates
 * (sql/deploy.sql in the jazzfer-portfolio repo) after an FTP file deploy.
 *
 * Endpoint: POST /wp-json/jazzfer-deploy/v1/apply
 * Headers:  X-Deploy-Token: <raw token>   (hash must match $TOKEN_HASH below)
 * Body:     {"sql": "<SQL text>"}         (statements separated by ;)
 *
 * Security: the raw token lives ONLY in the GitHub Actions secret DEPLOY_TOKEN.
 * This file stores its SHA-256 hash; without the raw token the endpoint is inert.
 * Only UPDATE/INSERT/DELETE on wp_posts/wp_postmeta/wp_options is allowed.
 *
 * NOTE: this file is deployed as a single `put` (the rest of mu-plugins/ is
 * intentionally excluded from auto-deploy because the live mu-plugin carries
 * live-only additions such as the Google Analytics snippet).
 */

if (!defined('ABSPATH')) { exit; }

add_action('rest_api_init', function () {
    register_rest_route('jazzfer-deploy/v1', '/apply', array(
        'methods'  => 'POST',
        'permission_callback' => 'jazzfer_deploy_check_token',
        'callback' => 'jazzfer_deploy_apply',
    ));
    register_rest_route('jazzfer-deploy/v1', '/diag', array(
        'methods'  => 'GET',
        'permission_callback' => 'jazzfer_deploy_check_token',
        'callback' => 'jazzfer_deploy_diag',
    ));
});

function jazzfer_deploy_diag(WP_REST_Request $request) {
    global $wpdb;
    $rows = $wpdb->get_results("SELECT ID, post_status, post_type, post_parent, post_name, post_date, post_date_gmt, post_modified FROM {$wpdb->posts} WHERE ID IN (100,101,12,500001,500002) ORDER BY ID", ARRAY_A);
    $menuItems = $wpdb->get_results("
        SELECT p.ID, p.post_title, p.post_status,
               obj.meta_value AS object_id,
               PARSE_URL_META.meta_value AS parent_item
        FROM {$wpdb->posts} p
        LEFT JOIN {$wpdb->postmeta} obj ON obj.post_id = p.ID AND obj.meta_key = '_menu_item_object_id'
        LEFT JOIN {$wpdb->postmeta} PARSE_URL_META ON PARSE_URL_META.post_id = p.ID AND PARSE_URL_META.meta_key = '_menu_item_menu_item_parent'
        WHERE p.post_type = 'nav_menu_item'
        ORDER BY p.ID", ARRAY_A);
    return rest_ensure_response(array(
        'rows' => $rows,
        'menuItems' => $menuItems,
        'mysql_now' => $wpdb->get_var("SELECT NOW()"),
        'timezone' => function_exists('wp_timezone_string') ? wp_timezone_string() : get_option('timezone_string'),
    ));
}

function jazzfer_deploy_check_token(WP_REST_Request $request) {
    // Brute-force throttle: 10 bad tokens per hour per IP blocks the endpoint.
    $ip  = isset($_SERVER['REMOTE_ADDR']) ? $_SERVER['REMOTE_ADDR'] : 'unknown';
    $key = 'jazzfer_deploy_fail_' . md5($ip);
    if ((int) get_transient($key) >= 10) {
        return new WP_Error('jazzfer_deploy_throttled', 'Too many failed attempts.', array('status' => 429));
    }
    // The proxy layer on free hosting has been observed to strip custom
    // X- headers, so also accept the token as a query param or body field.
    $token = $request->get_header('X-Deploy-Token');
    if (!is_string($token) || $token === '') {
        $token = isset($_GET['token']) ? (string) $_GET['token'] : '';
    }
    if (!is_string($token) || $token === '') {
        $payload = $request->get_json_params();
        if (is_array($payload) && isset($payload['token']) && is_string($payload['token'])) {
            $token = $payload['token'];
        }
    }
    $ok = is_string($token) && $token !== ''
        && hash_equals(jazzfer_deploy_token_hash(), hash('sha256', $token));
    if (!$ok) {
        set_transient($key, (int) get_transient($key) + 1, HOUR_IN_SECONDS);
        return new WP_Error('jazzfer_deploy_forbidden', 'Invalid deploy token.', array('status' => 403));
    }
    delete_transient($key);
    return true;
}

function jazzfer_deploy_token_hash() {
    return '1b0aacee0108f55a866c646cde7171eef95a94466dcf424bee0688373f0fa3f4';
}

/**
 * Split SQL text into statements, respecting single-quoted strings
 * ('' escapes), double-quoted strings, and -- / # line comments.
 */
function jazzfer_deploy_split_sql($sql) {
    $statements = array();
    $current = '';
    $len = strlen($sql);
    $i = 0;
    $state = 'code'; // code | sq | dq | line_comment
    while ($i < $len) {
        $ch = $sql[$i];
        $next = $i + 1 < $len ? $sql[$i + 1] : '';
        if ($state === 'code') {
            if ($ch === '-' && $next === '-') { $state = 'line_comment'; $i += 2; continue; }
            if ($ch === '#') { $state = 'line_comment'; $i += 1; continue; }
            if ($ch === "'") { $state = 'sq'; $current .= $ch; $i += 1; continue; }
            if ($ch === '"') { $state = 'dq'; $current .= $ch; $i += 1; continue; }
            if ($ch === ';') {
                if (trim($current) !== '') { $statements[] = trim($current); }
                $current = '';
                $i += 1; continue;
            }
            $current .= $ch; $i += 1; continue;
        }
        if ($state === 'line_comment') {
            if ($ch === "\n") { $state = 'code'; $current .= "\n"; }
            $i += 1; continue;
        }
        if ($state === 'sq') {
            if ($ch === "'" && $next === "'") { $current .= "''"; $i += 2; continue; }
            if ($ch === '\\') { $current .= $ch . $next; $i += 2; continue; }
            if ($ch === "'") { $state = 'code'; $current .= $ch; $i += 1; continue; }
            $current .= $ch; $i += 1; continue;
        }
        if ($state === 'dq') {
            if ($ch === '"') { $state = 'code'; $current .= $ch; $i += 1; continue; }
            $current .= $ch; $i += 1; continue;
        }
    }
    if (trim($current) !== '') { $statements[] = trim($current); }
    return $statements;
}

function jazzfer_deploy_apply(WP_REST_Request $request) {
    global $wpdb;
    $payload = $request->get_json_params();
    if (!is_array($payload) || !isset($payload['sql']) || !is_string($payload['sql'])) {
        return new WP_Error('jazzfer_deploy_bad_request', 'Body must be JSON with a "sql" string.', array('status' => 400));
    }
    if (strlen($payload['sql']) > 2 * 1024 * 1024) {
        return new WP_Error('jazzfer_deploy_too_large', 'SQL payload exceeds 2 MB.', array('status' => 413));
    }
    $allowed = array('UPDATE wp_posts', 'UPDATE `wp_posts`', 'UPDATE wp_postmeta', 'UPDATE `wp_postmeta`',
                     'UPDATE wp_options', 'UPDATE `wp_options`', 'INSERT INTO wp_posts', 'INSERT INTO `wp_posts`',
                     'DELETE FROM wp_posts', 'DELETE FROM `wp_posts`');
    $results = array();
    $applied = 0;
    foreach (jazzfer_deploy_split_sql($payload['sql']) as $stmt) {
        $prefixOk = false;
        foreach ($allowed as $p) {
            if (stripos(ltrim($stmt), $p) === 0) { $prefixOk = true; break; }
        }
        if (!$prefixOk) { $results[] = array('skipped' => mb_substr($stmt, 0, 80)); continue; }
        $res = $wpdb->query($stmt);
        if ($res === false) {
            return new WP_Error('jazzfer_deploy_sql_error', $wpdb->last_error, array('status' => 500));
        }
        $applied++;
        $results[] = array('affected' => (int) $res, 'stmt' => mb_substr(preg_replace('/\s+/', ' ', $stmt), 0, 90));
    }

    // Bust page caches so changes are visible immediately (WP Super Cache).
    if (function_exists('wp_cache_clear_cache')) { wp_cache_clear_cache(is_multisite() ? get_current_blog_id() : 0); }
    do_action('jazzfer_deploy_applied', $applied);

    return rest_ensure_response(array('applied' => $applied, 'results' => $results, 'time' => current_time('mysql')));
}
