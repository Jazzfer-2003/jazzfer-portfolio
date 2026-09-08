-- deploy.sql — applied to the live database by the GitHub Actions workflow.
-- Regenerate with a local run; keep statements single-line-safe (quotes escaped as '').
-- Pages: 11=About, 12=Portfolio, 44=My Certifications.

-- page 11
UPDATE wp_posts SET post_content='<!-- wp:html -->
<div class="page-section">
  <h2 class="reveal">About Me</h2>
  <p class="reveal" style="font-size:1.05rem;line-height:1.8;opacity:0.85">I''m a 4th year I.T Student passionate about web development and design. I specialize in building modern, responsive websites and applications that deliver great user experiences. I''m constantly learning new technologies and improving my skills.</p>
  <p class="reveal" style="font-size:1.05rem;line-height:1.8;opacity:0.85;margin-top:16px">Throughout my academic journey, I''ve worked on various projects ranging from simple websites to complex web applications. I enjoy solving problems and turning ideas into reality through code. When I''m not studying, I explore new tech trends and work on personal projects.</p>

  <h2 class="reveal" style="margin-top:60px">My Skills</h2>
  <div class="skills-grid reveal">
    <span class="skill-tag">HTML5</span>
    <span class="skill-tag">CSS3</span>
    <span class="skill-tag">JavaScript</span>
    <span class="skill-tag">React</span>
    <span class="skill-tag">Node.js</span>
    <span class="skill-tag">WordPress</span>
    <span class="skill-tag">PHP</span>
    <span class="skill-tag">Python</span>
    <span class="skill-tag">Git</span>
    <span class="skill-tag">SQL</span>
    <span class="skill-tag">Responsive Design</span>
    <span class="skill-tag">UI/UX</span>
  </div>

  <h2 class="reveal" style="margin-top:60px">Education</h2>
  <div class="timeline reveal">
    <div class="timeline-item">
      <h3>4th Year I.T Student</h3>
      <div class="date">2023 - 2026</div>
      <p>Currently pursuing a Bachelor''s degree in Information Technology. Focused on web development, database management, and software engineering.</p>
    </div>
  </div>

  <div class="stats-row reveal">
    <div class="stat-item"><div class="stat-number">3+</div><div class="stat-label">Years Studying</div></div>
    <div class="stat-item"><div class="stat-number">10+</div><div class="stat-label">Projects Done</div></div>
    <div class="stat-item"><div class="stat-number">100%</div><div class="stat-label">Dedication</div></div>
  </div>
</div>
<!-- /wp:html -->' WHERE ID=11;

-- page 12
UPDATE wp_posts SET post_content='<!-- wp:html -->
<div class="page-section-wide">
  <h2 class="reveal">My Projects</h2>
  <p class="section-sub reveal">A collection of web applications and projects I''ve built throughout my academic journey.</p>

  <div class="card-grid">
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/enrollment-system.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/enrollment-system.png" alt="Palale Enrollment System" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Palale Enrollment System</h3>
        <div class="card-tags"><span class="card-tag">PHP</span><span class="card-tag">MySQL</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span></div>
        <p>A complete web-based enrollment system that handles student registration, subject management, and enrollment records with a secure admin dashboard.</p>
        <div class="card-links"><a href="https://palale-enrollment-system.onrender.com/" target="_blank" rel="noopener" aria-label="View live site for Palale Enrollment System (opens in new tab)">View Live Site</a></div>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/quizard.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/quizard.png" alt="Quizard - QuizForge App" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Quizard - QuizForge App</h3>
        <div class="card-tags"><span class="card-tag">JavaScript</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span><span class="card-tag">GitHub Pages</span></div>
        <p>An interactive quiz platform with dynamic question generation, score tracking, and responsive design - deployed on GitHub Pages.</p>
        <div class="card-links"><a href="https://quizforge-app.github.io/quizard/" target="_blank" rel="noopener" aria-label="View live site for Quizard QuizForge App (opens in new tab)">View Live Site</a></div>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/home.webp?v=2" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/home.png?v=2" alt="Google Sites Portfolio - Home" loading="lazy" decoding="async" width="1280" height="800"></picture></div>
      <div class="card-body">
        <h3>Google Sites Portfolio</h3>
        <div class="card-tags"><span class="card-tag">Google Sites</span><span class="card-tag">Portfolio</span></div>
        <p>My alternative portfolio built on Google Sites - featuring my projects, skills, and achievements with a clean, accessible layout.</p>
        <div class="card-links"><a href="https://sites.google.com/view/jazzfer-inigo-portfolio/home" target="_blank" rel="noopener" aria-label="View live site for Google Sites Portfolio (opens in new tab)">View Live Site</a></div>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/snake-ladder.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/snake-ladder.png" alt="Snake and Ladder Game" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Snake and Ladder Game</h3>
        <div class="card-tags"><span class="card-tag">JavaScript</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span></div>
        <p>A classic Snake and Ladder board game with interactive dice rolling, animated player movement, and multiplayer support.</p>
        
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/polygon-shapes.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/polygon-shapes.png" alt="Polygon Shapes Visualizer" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Polygon Shapes Visualizer</h3>
        <div class="card-tags"><span class="card-tag">JavaScript</span><span class="card-tag">Canvas</span><span class="card-tag">Geometry</span></div>
        <p>An interactive polygon shapes tool that displays and manipulates geometric shapes for educational purposes.</p>
        
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/periodic-table.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/periodic-table.png" alt="Periodic Table Explorer" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
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
        <div class="card-links"><a href="https://github.com/Jazzfer-2003" target="_blank" rel="noopener" aria-label="Follow Jazzfer Inigo on GitHub (opens in new tab)">Follow on GitHub</a></div>
      </div>
    </div>
  </div>
</div>
<!-- /wp:html -->' WHERE ID=12;

-- page 44
UPDATE wp_posts SET post_content='<!-- wp:html -->
<div class="page-section-wide">
  <h2 class="reveal">My Certifications</h2>
  <p class="section-sub reveal">Certificates and achievements I''ve earned throughout my academic journey as an IT student.</p>
  <div class="card-grid">
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-1.png?v=2" alt="CompTIA Network Security 101" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>CompTIA Network Security 101</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Earned a certification in network security fundamentals, covering threat detection, secure network design, and risk management.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-2.png?v=2" alt="Information Security Management" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>Information Security Management</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Completed training in information security management, covering risk assessment, security policies, data protection, and compliance standards.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-3.png?v=2" alt="Anti Virus Firewall Protection" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>Anti Virus Firewall Protection</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Training focused on antivirus solutions, firewall configuration, threat prevention, and endpoint security best practices.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-4.png?v=2" alt="Data to defense: Mastering Information &amp; Network Security" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>Data to defense: Mastering Information &amp; Network Security</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Comprehensive training covering the full spectrum of information and network security, from data protection strategies to advanced defense mechanisms.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-5.jpg?v=2" alt="Beyond Automation: The Power of Artificial Intelligence" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>Beyond Automation: The Power of Artificial Intelligence</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Explored the transformative potential of AI beyond simple automation, covering machine learning, intelligent systems, and real-world AI applications.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-6.png" alt="Generative AI &amp; Augmented Reality: Shaping the Future of Digital Innovation" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>Generative AI &amp; Augmented Reality: Shaping the Future of Digital Innovation</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Explored how generative AI and augmented reality are shaping the future of digital innovation, covering emerging AI tools, immersive AR experiences, and their real-world applications.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-7.png" alt="IT Infrastructure and Cloud Computing: Building the Digital Future" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>IT Infrastructure and Cloud Computing: Building the Digital Future</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Covered the foundations of IT infrastructure and cloud computing, including system architecture, cloud services and deployment, and building reliable digital solutions.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-8.jpg" alt="Smart Business with AI and Data Analytics" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>Smart Business with AI and Data Analytics</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Learned how AI and data analytics drive smarter business decisions, covering data-driven strategies, analytics tools, and practical applications of AI in business.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-9.jpg" alt="Python in Action Using PyCharm: Learn, Code, Build!" loading="lazy" class="cert-img" /></div>
      <div class="card-body">
        <h3>Python in Action Using PyCharm: Learn, Code, Build!</h3>
        <div class="card-tags"><span class="card-tag">2026</span></div>
        <p>Hands-on training in Python programming using PyCharm, covering coding fundamentals, building and running projects, and practical development workflows.</p>
      </div>
    </div>
  </div>
</div>
<!-- /wp:html -->' WHERE ID=44;

