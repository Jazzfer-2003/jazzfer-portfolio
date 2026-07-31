# Jazzfer Inigo — Portfolio

Custom code for the [Jazzfer Inigo](https://jazzferinigo.example) portfolio, built on **WordPress + Blocksy**.

This repository contains only the site's custom code and assets. WordPress core, the Blocksy theme, and plugins are installed separately (see [Setup](#setup)).

## Features

- **Dark mode** — toggle in the header (desktop + mobile builds) that follows the OS `prefers-color-scheme` preference by default, persisted in `localStorage`
- **Custom branding** — gradient accents, `Montserrat`/`Inter` font loading with `preconnect`, theme-color meta, site favicon
- **SEO** — custom `og:*` / Twitter card meta, per-page titles and descriptions, 100 SEO Lighthouse
- **Contact form** — Contact Form 7 wired to Gmail SMTP (WP Mail SMTP)
- **Hero section** — full-bleed layout with a round, gradient-ring avatar photo
- **Privacy policy** — dedicated page wired to `wp_page_for_privacy_policy`, linked in the footer
- **Hardening** — XML-RPC disabled, `DISALLOW_FILE_EDIT`, Limit Login Attempts Reloaded, strong salts, Lighthouse 100 Accessibility / 100 Best Practices / 100 SEO

## Structure

```
├── .gitignore                    # excludes secrets, core, themes, plugins
├── wp-config.php.example         # sanitized config template (no secrets)
└── wp-content/
    ├── mu-plugins/
    │   └── jazzfer-custom.php    # SEO meta, fonts, theme-color, XML-RPC off, footer
    └── uploads/
        ├── custom.css            # branding, dark mode, hero, responsive rules
        ├── custom.js             # theme toggle, OS-preference detection
        ├── nature.jpg            # portfolio background asset
        └── 2026/07/
            ├── ji-icon.png       # site favicon
            └── project-pic.jpeg  # hero avatar photo
```

## Setup

1. Install WordPress (e.g. via WAMP/XAMPP) in the site root.
2. Copy `wp-config.php.example` to `wp-config.php` and fill in:
   - Database credentials
   - `AUTH_KEY` / `SECURE_AUTH_KEY` / `LOGGED_IN_KEY` / `NONCE_KEY` + salts (use the [WordPress salt generator](https://api.wordpress.org/secret-key/1.1/salt/))
   - The WP Mail SMTP constants if sending via Gmail
3. Install plugins: **Contact Form 7**, **WP Mail SMTP**, **Limit Login Attempts Reloaded**.
4. Copy `wp-content/mu-plugins/jazzfer-custom.php` into `wp-content/mu-plugins/`.
5. Copy the files from `wp-content/uploads/` into your `wp-content/uploads/` (or re-upload via Media).
6. In Appearance → Customize: enable dark mode support, set the favicon (`site_icon`), and create the Home/About/Portfolio/Certifications/Contact/Privacy Policy pages.

### Gmail SMTP (optional)

The WP Mail SMTP settings form strips spaces from the app password, so credentials are provided via constants in `wp-config.php` (they only take effect when `WPMS_ON` is `true`):

```php
define('WPMS_ON', true);
define('WPMS_SMTP_USER', 'you@gmail.com');
define('WPMS_SMTP_PASS', 'xxxx xxxx xxxx xxxx'); // Gmail app password, WITH spaces
```

## Security notes

- **Never commit `wp-config.php`** — it contains DB credentials, salts, and the SMTP app password. The real file stays on the server; only the sanitized example is tracked.
- **Rotate the Gmail app password** before deploying to a public host (Google Account → Security → App passwords).
- Database credentials, salts, and the admin password here are development-only values; change them for production.
