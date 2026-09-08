<?php
/**
 * Jazzfer Custom Enhancements — must-use plugin
 *
 * Deployment: Keep wp_options siteurl/home as http://localhost/wordpress for local dev.
 * For live (https://jazzfer.great-site.net), run via WP-CLI:
 *   wp search-replace 'http://localhost/wordpress' 'https://jazzfer.great-site.net' --all-tables --precise
 * Or define WP_HOME/WP_SITEURL in wp-config.php for dynamic handling.
 * og:image and descriptions below are environment-agnostic via content_url() and home_url().
 */

function jazzfer_enqueue_assets() {
    $css_path = WP_CONTENT_DIR . '/uploads/custom.css';
    $js_path  = WP_CONTENT_DIR . '/uploads/custom.js';

    if (file_exists($css_path)) {
        wp_enqueue_style(
            'jazzfer-custom',
            content_url('uploads/custom.css'),
            array(),
            filemtime($css_path)
        );
    }

    if (file_exists($js_path)) {
        wp_enqueue_script(
            'jazzfer-custom',
            content_url('uploads/custom.js'),
            array(),
            filemtime($js_path),
            array('strategy' => 'defer')
        );
    }
}
add_action('wp_enqueue_scripts', 'jazzfer_enqueue_assets');

/* ─── Google Fonts (preconnect + stylesheet, replaces CSS @import) ─── */
function jazzfer_enqueue_fonts() {
    wp_enqueue_style(
        'jazzfer-fonts',
        'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Sora:wght@600;700;800&display=swap',
        array(),
        null
    );
}
add_action('wp_enqueue_scripts', 'jazzfer_enqueue_fonts', 5);

function jazzfer_font_preconnects() {
    echo '<link rel="preconnect" href="https://fonts.googleapis.com">' . "\n";
    echo '<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>' . "\n";
}
add_action('wp_head', 'jazzfer_font_preconnects', 1);

/* ─── SEO: per-page meta description + Open Graph ─── */
function jazzfer_seo_descriptions() {
    if (is_front_page()) {
        return "Hi, I'm Jazzfer Inigo — 4th Year IT Student & Web Developer. I craft modern, responsive web experiences. Explore my projects, certifications, and get in touch.";
    }
    if (is_page('about')) {
        return 'Learn about Jazzfer Inigo — IT student, web developer, and problem solver. Background, skills, statistics, and academic journey.';
    }
    if (is_page('portfolio')) {
        return "Explore 7 projects by Jazzfer Inigo — Palale Enrollment System (PHP/MySQL on Render), Quizard QuizForge App (GitHub Pages), Google Sites Portfolio, plus interactive JavaScript apps (Snake & Ladder, Polygon Visualizer, Periodic Table) — built with modern web tech.";
    }
    if (is_page('certifications')) {
        return "Certificates and achievements earned by Jazzfer Inigo throughout his academic journey as an IT student.";
    }
    if (is_page('contact')) {
        return 'Get in touch with Jazzfer Inigo for web development inquiries, collaboration, or just to say hello.';
    }
    return null;
}

function jazzfer_seo_meta() {
    if (is_admin()) {
        return;
    }

    $desc = jazzfer_seo_descriptions();

    if ($desc) {
        echo '<meta name="description" content="' . esc_attr($desc) . '">' . "\n";
    }

    $title = wp_get_document_title();
    $url   = get_permalink();

    if (!$url) {
        $url = home_url('/');
    }

    echo '<meta property="og:site_name" content="' . esc_attr(get_bloginfo('name')) . '">' . "\n";
    echo '<meta property="og:type" content="website">' . "\n";
    echo '<meta property="og:title" content="' . esc_attr($title) . '">' . "\n";
    if ($desc) {
        echo '<meta property="og:description" content="' . esc_attr($desc) . '">' . "\n";
    }
    echo '<meta property="og:url" content="' . esc_url($url) . '">' . "\n";
    // Open Graph image per page (WebP with PNG fallback handled via content_url)
    if (is_page('portfolio')) {
        $og_image = content_url('uploads/2026/09/enrollment-system.webp');
        echo '<meta property="og:image" content="' . esc_url($og_image) . '">' . "\n";
        echo '<meta property="og:image:width" content="1920">' . "\n";
        echo '<meta property="og:image:height" content="1080">' . "\n";
        echo '<meta name="twitter:image" content="' . esc_url($og_image) . '">' . "\n";
    } elseif (is_front_page()) {
        $og_image = content_url('uploads/2026/07/project-pic.jpeg');
        echo '<meta property="og:image" content="' . esc_url($og_image) . '">' . "\n";
        echo '<meta name="twitter:image" content="' . esc_url($og_image) . '">' . "\n";
    } elseif (is_page('certifications')) {
        $og_image = content_url('uploads/certs/cert-1.png');
        echo '<meta property="og:image" content="' . esc_url($og_image) . '">' . "\n";
        echo '<meta name="twitter:image" content="' . esc_url($og_image) . '">' . "\n";
    }
    echo '<meta name="twitter:card" content="summary_large_image">' . "\n";
    echo '<meta name="twitter:title" content="' . esc_attr($title) . '">' . "\n";
    if ($desc) {
        echo '<meta name="twitter:description" content="' . esc_attr($desc) . '">' . "\n";
    }
}
add_action('wp_head', 'jazzfer_seo_meta', 2);

/* ─── Mobile browser chrome color ─── */
function jazzfer_theme_color() {
    echo '<meta name="theme-color" media="(prefers-color-scheme: light)" content="#f8fafc">' . "\n";
    echo '<meta name="theme-color" media="(prefers-color-scheme: dark)" content="#0b1020">' . "\n";
}
add_action('wp_head', 'jazzfer_theme_color', 2);

/* ─── Security: disable XML-RPC ─── */
add_filter('xmlrpc_enabled', '__return_false');

function jazzfer_custom_footer() {
    $socials = array(
        'GitHub'    => 'https://github.com/Jazzfer-2003',
        'LinkedIn'  => 'https://www.linkedin.com/in/jazzfer-inigo-ab4ab9413/',
        'Facebook'  => 'https://web.facebook.com/jazzfer.quijano.inigo.2024',
    );
    $privacy = get_privacy_policy_url();
    ?>
<footer class="pf-footer">
  <div class="pf-footer-inner">
    <div class="pf-footer-brand">
      <div class="pf-footer-logo">JI</div>
      <div>
        <div class="pf-footer-name">Jazzfer Inigo</div>
        <p>4th Year IT Student &amp; Web Developer crafting modern, responsive web experiences.</p>
      </div>
    </div>
    <div class="pf-footer-col">
      <div class="pf-footer-title">Explore</div>
      <ul>
        <li><a href="<?php echo esc_url(home_url('/about/')); ?>">About</a></li>
        <li><a href="<?php echo esc_url(home_url('/portfolio/')); ?>">Portfolio</a></li>
        <li><a href="<?php echo esc_url(home_url('/certifications/')); ?>">Certifications</a></li>
        <li><a href="<?php echo esc_url(home_url('/contact/')); ?>">Contact</a></li>
        <?php if ($privacy) : ?>
        <li><a href="<?php echo esc_url($privacy); ?>">Privacy Policy</a></li>
        <?php endif; ?>
      </ul>
    </div>
    <div class="pf-footer-col">
      <div class="pf-footer-title">Connect</div>
      <ul>
        <?php foreach ($socials as $label => $url) : ?>
        <li><a href="<?php echo esc_url($url); ?>" target="_blank" rel="noopener"><?php echo esc_html($label); ?></a></li>
        <?php endforeach; ?>
      </ul>
    </div>
  </div>
  <div class="pf-footer-bottom">
    <p>&copy; <?php echo esc_html(date('Y')); ?> Jazzfer Inigo. Built with care and lots of coffee.</p>
  </div>
</footer>
    <?php
}
add_action('wp_footer', 'jazzfer_custom_footer');
