(function() {
  'use strict';

  /* ─── Scroll Reveal ─── */
  function initReveal() {
    var els = document.querySelectorAll('.reveal');
    if (!els.length) return;
    var observer = new IntersectionObserver(function(entries) {
      entries.forEach(function(entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('visible');
          observer.unobserve(entry.target);
        }
      });
    }, { threshold: 0.12 });
    els.forEach(function(el) { observer.observe(el); });
  }

  /* ─── Lightbox ─── */
  function initLightbox() {
    var triggers = document.querySelectorAll('.cert-img');
    if (!triggers.length) return;

    var overlay = document.createElement('div');
    overlay.className = 'lightbox-overlay';
    var img = document.createElement('img');
    overlay.appendChild(img);
    document.body.appendChild(overlay);

    triggers.forEach(function(el) {
      el.addEventListener('click', function(e) {
        var src = el.getAttribute('data-src') || el.src || '';
        var actualSrc = el.querySelector('img') ? el.querySelector('img').src : src;
        if (el.tagName === 'IMG') actualSrc = el.src;
        if (actualSrc) {
          img.src = actualSrc;
          overlay.classList.add('active');
        }
      });
    });

    overlay.addEventListener('click', function() {
      overlay.classList.remove('active');
    });

    document.addEventListener('keydown', function(e) {
      if (e.key === 'Escape') overlay.classList.remove('active');
    });
  }

  /* ─── Smooth Scroll for anchor links ─── */
  function initSmoothScroll() {
    document.querySelectorAll('a[href^="#"]').forEach(function(anchor) {
      anchor.addEventListener('click', function(e) {
        var target = document.querySelector(this.getAttribute('href'));
        if (target) {
          e.preventDefault();
          target.scrollIntoView({ behavior: 'smooth', block: 'start' });
        }
      });
    });
  }

  /* ─── Dark Mode Toggle ─── */
  function initThemeToggle() {
    var KEY = 'pf-theme';
    var targets = document.querySelectorAll('#header [data-row="middle"] .ct-container [data-column="end"] [data-items]');
    if (!targets.length) return;

    var sun = '<svg class="pf-sun" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/></svg>';
    var moon = '<svg viewBox="0 0 24 24"><path d="M21 12.8A9 9 0 1 1 11.2 3a7 7 0 0 0 9.8 9.8z"/></svg>';

    var buttons = [];

    targets.forEach(function(target) {
      var btn = document.createElement('button');
      btn.type = 'button';
      btn.className = 'pf-theme-toggle';
      btn.setAttribute('aria-label', 'Toggle dark mode');
      btn.setAttribute('title', 'Toggle dark mode');
      btn.innerHTML = moon;
      target.insertBefore(btn, target.firstChild);
      buttons.push(btn);
    });

    function apply(dark, persist) {
      document.body.setAttribute('data-dark', dark ? 'true' : 'false');
      buttons.forEach(function(b) { b.innerHTML = dark ? sun : moon; });
      if (persist) {
        try { localStorage.setItem(KEY, dark ? '1' : '0'); } catch (e) {}
      }
    }

    var saved = null;
    try { saved = localStorage.getItem(KEY); } catch (e) {}
    var osDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;
    apply(saved === null ? osDark : saved === '1', false);

    buttons.forEach(function(btn) {
      btn.addEventListener('click', function() {
        apply(document.body.getAttribute('data-dark') !== 'true', true);
      });
    });
  }

  /* ─── Header scroll state ─── */
  function initHeaderScroll() {
    function onScroll() {
      if (window.scrollY > 10) {
        document.body.classList.add('scrolled');
      } else {
        document.body.classList.remove('scrolled');
      }
    }
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();
  }

  /* ─── Back to top ─── */
  function initBackToTop() {
    var btn = document.createElement('button');
    btn.type = 'button';
    btn.className = 'pf-top';
    btn.setAttribute('aria-label', 'Back to top');
    btn.innerHTML = '<svg viewBox="0 0 24 24"><path d="M12 19V5m-7 7 7-7 7 7"/></svg>';
    document.body.appendChild(btn);

    function onScroll() {
      btn.classList.toggle('show', window.scrollY > 400);
    }
    window.addEventListener('scroll', onScroll, { passive: true });
    onScroll();
    btn.addEventListener('click', function() {
      window.scrollTo({ top: 0, behavior: 'smooth' });
    });
  }

  /* ─── Typewriter (home hero) ─── */
  function initTypewriter() {
    var subtitle = document.querySelector('.home .hero-section .subtitle');
    if (!subtitle) return;

    var roles = ['Web Developer', 'Problem Solver', 'Tech Enthusiast'];
    var raw = subtitle.textContent.trim();
    var ampIndex = raw.lastIndexOf('&');
    var prefix = ampIndex >= 0 ? raw.substring(0, ampIndex + 1) + ' ' : '';

    var reduceMotion = window.matchMedia('(prefers-reduced-motion: reduce)').matches;

    if (reduceMotion) {
      subtitle.innerHTML = prefix + '<span class="pf-typed">' + roles[0] + '</span>';
      return;
    }

    subtitle.innerHTML = prefix + '<span class="pf-typed"></span><span class="pf-caret"></span>';
    var typedEl = subtitle.querySelector('.pf-typed');

    var roleIndex = 0;
    var charIndex = 0;
    var deleting = false;
    var timer = null;

    function tick() {
      var role = roles[roleIndex];
      if (!deleting) {
        charIndex++;
        typedEl.textContent = role.substring(0, charIndex);
        if (charIndex === role.length) {
          deleting = true;
          timer = setTimeout(tick, 2200);
          return;
        }
        timer = setTimeout(tick, 70);
      } else {
        charIndex--;
        typedEl.textContent = role.substring(0, charIndex);
        if (charIndex === 0) {
          deleting = false;
          roleIndex = (roleIndex + 1) % roles.length;
          timer = setTimeout(tick, 400);
          return;
        }
        timer = setTimeout(tick, 40);
      }
    }
    tick();
  }

  /* ─── Hero social icons ─── */
  function initHeroSocials() {
    var links = document.querySelectorAll('.home .hero-section .hero-social a');
    if (!links.length) return;

    var icons = {
      GH: '<svg viewBox="0 0 24 24"><path d="M12 .5C5.7.5.5 5.7.5 12c0 5.1 3.3 9.4 7.9 10.9.6.1.8-.2.8-.6v-2c-3.2.7-3.9-1.4-3.9-1.4-.5-1.3-1.3-1.7-1.3-1.7-1-.7.1-.7.1-.7 1.2.1 1.8 1.2 1.8 1.2 1 1.8 2.8 1.3 3.4 1 .1-.8.4-1.3.7-1.6-2.6-.3-5.3-1.3-5.3-5.7 0-1.3.4-2.3 1.2-3.1-.1-.3-.5-1.5.1-3.1 0 0 1-.3 3.2 1.2a11 11 0 0 1 5.8 0C17 4.5 18 4.8 18 4.8c.6 1.6.2 2.8.1 3.1.7.8 1.2 1.8 1.2 3.1 0 4.4-2.7 5.4-5.3 5.7.4.4.8 1.1.8 2.2v3.2c0 .3.2.7.8.6a11.5 11.5 0 0 0 7.9-10.9C23.5 5.7 18.3.5 12 .5z"/></svg>',
      LI: '<svg viewBox="0 0 24 24"><path d="M4.98 3.5a2.5 2.5 0 1 1 0 5 2.5 2.5 0 0 1 0-5zM3 9h4v12H3zM9 9h3.8v1.7h.1c.5-1 1.8-2 3.7-2 4 0 4.7 2.6 4.7 6V21h-4v-5.5c0-1.3 0-3-1.9-3s-2.2 1.4-2.2 2.9V21H9z"/></svg>',
      FB: '<svg viewBox="0 0 24 24"><path d="M22 12a10 10 0 1 0-11.6 9.9v-7H7.9V12h2.5V9.8c0-2.5 1.5-3.9 3.8-3.9 1.1 0 2.2.2 2.2.2v2.5h-1.3c-1.2 0-1.6.8-1.6 1.6V12h2.8l-.4 2.9h-2.4v7A10 10 0 0 0 22 12z"/></svg>'
    };

    links.forEach(function(a) {
      var key = a.textContent.trim().toUpperCase().substring(0, 2);
      if (icons[key]) a.innerHTML = icons[key];
    });
  }

  /* ─── Init ─── */
  function initAll() {
    initReveal();
    initLightbox();
    initSmoothScroll();
    initThemeToggle();
    initHeaderScroll();
    initBackToTop();
    initTypewriter();
    initHeroSocials();
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initAll);
  } else {
    initAll();
  }
})();
