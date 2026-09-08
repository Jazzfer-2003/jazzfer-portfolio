-- Portfolio update for ID 12 - View Live Site + WebP
USE wordpress;
UPDATE wp_posts SET post_content='<!-- wp:html -->
<div class="page-section-wide">
  <h2 class="reveal">My Projects</h2>
  <p class="section-sub reveal">A collection of web applications and projects I''ve built throughout my academic journey.</p>

  <div class="card-grid">
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="http://localhost/wordpress/wp-content/uploads/2026/09/enrollment-system.webp" type="image/webp"><img src="http://localhost/wordpress/wp-content/uploads/2026/09/enrollment-system.png" alt="Palale Enrollment System" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Palale Enrollment System</h3>
        <div class="card-tags"><span class="card-tag">PHP</span><span class="card-tag">MySQL</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span></div>
        <p>A complete web-based enrollment system that handles student registration, subject management, and enrollment records with a secure admin dashboard.</p>
        <div class="card-links"><a href="https://palale-enrollment-system.onrender.com/" target="_blank" rel="noopener">View Live Site</a></div>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="http://localhost/wordpress/wp-content/uploads/2026/09/quizard.webp" type="image/webp"><img src="http://localhost/wordpress/wp-content/uploads/2026/09/quizard.png" alt="Quizard - QuizForge App" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Quizard - QuizForge App</h3>
        <div class="card-tags"><span class="card-tag">JavaScript</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span><span class="card-tag">GitHub Pages</span></div>
        <p>An interactive quiz platform with dynamic question generation, score tracking, and responsive design - deployed on GitHub Pages.</p>
        <div class="card-links"><a href="https://quizforge-app.github.io/quizard/" target="_blank" rel="noopener">View Live Site</a></div>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="http://localhost/wordpress/wp-content/uploads/2026/09/home.webp?v=2" type="image/webp"><img src="http://localhost/wordpress/wp-content/uploads/2026/09/home.png?v=2" alt="Google Sites Portfolio - Home" loading="lazy" decoding="async" width="1280" height="800"></picture></div>
      <div class="card-body">
        <h3>Google Sites Portfolio</h3>
        <div class="card-tags"><span class="card-tag">Google Sites</span><span class="card-tag">Portfolio</span></div>
        <p>My alternative portfolio built on Google Sites - featuring my projects, skills, and achievements with a clean, accessible layout.</p>
        <div class="card-links"><a href="https://sites.google.com/view/jazzfer-inigo-portfolio/home" target="_blank" rel="noopener">View Live Site</a></div>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="http://localhost/wordpress/wp-content/uploads/2026/09/snake-ladder.webp" type="image/webp"><img src="http://localhost/wordpress/wp-content/uploads/2026/09/snake-ladder.png" alt="Snake and Ladder Game" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Snake and Ladder Game</h3>
        <div class="card-tags"><span class="card-tag">JavaScript</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span></div>
        <p>A classic Snake and Ladder board game with interactive dice rolling, animated player movement, and multiplayer support.</p>
        
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="http://localhost/wordpress/wp-content/uploads/2026/09/polygon-shapes.webp" type="image/webp"><img src="http://localhost/wordpress/wp-content/uploads/2026/09/polygon-shapes.png" alt="Polygon Shapes Visualizer" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Polygon Shapes Visualizer</h3>
        <div class="card-tags"><span class="card-tag">JavaScript</span><span class="card-tag">Canvas</span><span class="card-tag">Geometry</span></div>
        <p>An interactive polygon shapes tool that displays and manipulates geometric shapes for educational purposes.</p>
        
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="http://localhost/wordpress/wp-content/uploads/2026/09/periodic-table.webp" type="image/webp"><img src="http://localhost/wordpress/wp-content/uploads/2026/09/periodic-table.png" alt="Periodic Table Explorer" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Periodic Table Explorer</h3>
        <div class="card-tags"><span class="card-tag">HTML</span><span class="card-tag">CSS</span><span class="card-tag">JavaScript</span></div>
        <p>An interactive periodic table of elements with detailed information, color-coded categories, and responsive layout.</p>
        
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img" style="font-size:3.5rem">&#x1F680;</div>
      <div class="card-body">
        <h3>More Coming Soon</h3>
        <div class="card-tags"><span class="card-tag">In Progress</span></div>
        <p>I''m currently working on new projects. Check back soon or follow me on GitHub to see what I''m building!</p>
        <div class="card-links"><a href="https://github.com/Jazzfer-2003">Follow on GitHub</a></div>
      </div>
    </div>
  </div>
</div>
<!-- /wp:html -->' WHERE ID=12;