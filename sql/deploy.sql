-- deploy.sql — applied to the live database by the GitHub Actions workflow.
-- Dates are UTC-normalized so pages are never "future" on the live server.

-- page 10
UPDATE wp_posts SET post_content='
<div class="hero-section"><img class="pf-avatar" src="https://jazzfer.great-site.net/wp-content/uploads/2026/07/project-pic.jpeg" alt="Jazzfer Inigo">
  <div class="tagline reveal reveal-delay-1">Portfolio</div>
  <h1 class="reveal reveal-delay-2">Hi, I&#8217;m <span>Jazzfer Inigo</span></h1>
  <p class="subtitle reveal reveal-delay-3">4th Year I.T Student &amp; Web Developer</p>
  <p class="desc reveal reveal-delay-3">Passionate about crafting modern web experiences. Currently studying Information Technology and turning ideas into reality through clean, efficient code.</p>
  <div class="hero-buttons reveal reveal-delay-4">
    <a href="/portfolio/" class="btn-gradient primary">View My Work ↓</a>
    <a href="/contact/" class="btn-gradient secondary">Let&#8217;s Talk →</a>
    <a href="https://jazzfer.great-site.net/wp-content/uploads/Jazzfer-Inigo-Resume.pdf" class="btn-gradient outline" download>Download Résumé ↓</a>
  </div>
  <div class="hero-social reveal reveal-delay-4">
    <a href="https://github.com/Jazzfer-2003" title="GitHub">GH</a>
    <a href="https://www.linkedin.com/in/jazzfer-inigo-ab4ab9413/" title="LinkedIn">LI</a>
    <a href="https://web.facebook.com/jazzfer.quijano.inigo.2024" title="Facebook">FB</a>
  </div>
  <div class="pf-stats reveal reveal-delay-5">
    <div class="pf-stat"><span class="pf-stat-num">20</span><span class="pf-stat-label">Certifications</span></div>
    <div class="pf-stat"><span class="pf-stat-num">7+</span><span class="pf-stat-label">Projects Built</span></div>
    <div class="pf-stat"><span class="pf-stat-num">4th</span><span class="pf-stat-label">Year IT Student</span></div>
  </div>
</div>
' WHERE ID=10;

-- page 11
UPDATE wp_posts SET post_content='<!-- wp:html -->
<div class="page-section">
  <h2 class="reveal">About Me</h2>
  <p class="reveal" style="font-size:1.05rem;line-height:1.8;opacity:0.85">I''m a 4th year I.T Student passionate about web development and design. I specialize in building modern, responsive websites and applications that deliver great user experiences. I''m constantly learning new technologies and improving my skills.</p>
  <p class="reveal" style="font-size:1.05rem;line-height:1.8;opacity:0.85;margin-top:16px">Throughout my academic journey, I''ve worked on various projects ranging from simple websites to complex web applications. I enjoy solving problems and turning ideas into reality through code. When I''m not studying, I explore new tech trends and work on personal projects.</p>

  <h2 class="reveal" style="margin-top:60px">My Skills</h2>
  <div class="reveal" style="margin-top:26px"><a href="https://jazzfer.great-site.net/wp-content/uploads/Jazzfer-Inigo-Resume.pdf" class="btn-gradient primary" download>Download My Résumé ↓</a></div>
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


  <h2 class="reveal" style="margin-top:60px">Experience &amp; Involvement</h2>
  <div class="timeline reveal">
    <div class="timeline-item">
      <h3>Web Developer — Freelance &amp; Academic Projects</h3>
      <div class="date">2023 – Present</div>
      <p>Designed and built web applications used by real people: a complete enrollment system deployed live on Render, the Quizard study platform, and interactive learning tools like a Periodic Table Explorer and a Polygon Shapes Visualizer.</p>
    </div>
    <div class="timeline-item">
      <h3>Cisco Networking Academy — Coursework</h3>
      <div class="date">2023 – 2025</div>
      <p>Completed 11 self-paced Cisco NetAcad credentials spanning networking fundamentals, cybersecurity (Ethical Hacker, Network Defense, Cyber Threat Management), Python programming, and data science.</p>
    </div>
  </div>
  <div class="stats-row reveal">
    <div class="stat-item"><div class="stat-number">20</div><div class="stat-label">Certifications</div></div>
    <div class="stat-item"><div class="stat-number">7+</div><div class="stat-label">Projects Built</div></div>
    <div class="stat-item"><div class="stat-number">3+</div><div class="stat-label">Years Coding</div></div>
  <h2 class="reveal" style="margin-top:60px">GitHub Activity</h2>
  <p class="reveal" style="opacity:0.75;margin-bottom:18px">A live snapshot of my recent contributions:</p>
  <div class="ghchart-wrap reveal"><img src="https://ghchart.rshah.org/Jazzfer-2003" alt="GitHub contribution graph for Jazzfer-2003" loading="lazy" onerror="this.parentElement.style.display=''none''"></div>
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
        <div class="card-links"><a href="https://jazzfer.great-site.net/portfolio/palale-enrollment-system/">Case Study</a><a href="https://palale-enrollment-system.onrender.com/" target="_blank" rel="noopener" aria-label="View live site for Palale Enrollment System (opens in new tab)">View Live Site</a></div>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/quizard.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/quizard.png" alt="Quizard - QuizForge App" loading="lazy" decoding="async" width="1920" height="1080"></picture></div>
      <div class="card-body">
        <h3>Quizard - QuizForge App</h3>
        <div class="card-tags"><span class="card-tag">JavaScript</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span><span class="card-tag">GitHub Pages</span></div>
        <p>An interactive quiz platform with dynamic question generation, score tracking, and responsive design - deployed on GitHub Pages.</p>
        <div class="card-links"><a href="https://jazzfer.great-site.net/portfolio/quizard/">Case Study</a><a href="https://quizard-app.github.io/" target="_blank" rel="noopener" aria-label="View live site for Quizard QuizForge App (opens in new tab)">View Live Site</a></div>
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

-- page 13
UPDATE wp_posts SET post_content='
<div class="page-section">
  <h2 class="reveal">Get In Touch</h2>
  <p class="section-sub reveal">Have a project in mind or just want to connect? Feel free to reach out!</p>
  <div class="contact-grid reveal">
    <div class="contact-info">
      <h3>Let&#8217;s Talk</h3>
      <p>I&#8217;m always open to discussing new projects, creative ideas, or opportunities.</p>
      <ul class="contact-methods">
        <li><span class="ci">&#9993;</span> <a href="mailto:jazzferinigo@gmail.com">jazzferinigo@gmail.com</a></li>
        <li><span class="ci">&#128222;</span> <a href="tel:+639487952853">09487952853</a></li>
        <li><span class="ci">&#128205;</span> Philippines</li>
        <li><span class="ci">&#128025;</span> <a href="https://github.com/Jazzfer-2003">GitHub</a></li>
        <li><span class="ci">&#128279;</span> <a href="https://www.linkedin.com/in/jazzfer-inigo-ab4ab9413/">LinkedIn</a></li>
        <li><span class="ci">&#128216;</span> <a href="https://web.facebook.com/jazzfer.quijano.inigo.2024">Facebook</a></li>
        <li><span class="ci">&#128196;</span> <a href="https://jazzfer.great-site.net/wp-content/uploads/Jazzfer-Inigo-Resume.pdf" download>Download My Résumé (PDF)</a></li>
      </ul>
    </div>
    <div class="contact-form-inner">
      [contact-form-7 id="7657bd3" title="Portfolio Contact"]
    </div>
  </div>
</div>
' WHERE ID=13;

-- page 44
UPDATE wp_posts SET post_content='<!-- wp:html -->
<div class="page-section-wide">
  <h2 class="reveal">My Certifications</h2>
  <p class="section-sub reveal">Certificates and achievements I''ve earned throughout my academic journey as an IT student.</p>
  <div class="cert-filters reveal" role="group" aria-label="Filter certificates">
    <button class="cert-filter active" data-filter="all" type="button">All</button>
    <button class="cert-filter" data-filter="cisco" type="button">Cisco NetAcad</button>
    <button class="cert-filter" data-filter="seminar" type="button">Seminars &amp; Events</button>
    <button class="cert-filter" data-filter="2023" type="button">2023</button>
    <button class="cert-filter" data-filter="2024" type="button">2024</button>
    <button class="cert-filter" data-filter="2025" type="button">2025</button>
    <button class="cert-filter" data-filter="2026" type="button">2026</button>
  </div>
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
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-10.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-10.png" alt="Networking Basics" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Networking Basics</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2023</span></div>
        <p>Completed Cisco Networking Academy''s foundational networking course, covering network types, IP addressing, DNS and DHCP, and basic network configuration.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-11.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-11.png" alt="Computer Hardware Basics" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Computer Hardware Basics</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2024</span></div>
        <p>Learned the components of computer systems, hardware assembly, peripherals, and how to troubleshoot common hardware issues.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-12.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-12.png" alt="Introduction to Cybersecurity" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Introduction to Cybersecurity</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2024</span></div>
        <p>Completed an introduction to the cybersecurity field, covering common cyber threats, attacks and vulnerabilities, and how organizations defend against them.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-13.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-13.png" alt="Python Essentials 1" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Python Essentials 1</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed the Cisco and OpenEDG Python Institute course covering Python fundamentals, data types, control structures, and basic programming.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-14.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-14.png" alt="Ethical Hacker" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Ethical Hacker</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed hands-on training in ethical hacking, covering vulnerability assessment, penetration testing tools and techniques, and defensive security practices.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-15.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-15.png" alt="Endpoint Security" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Endpoint Security</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed training in endpoint security, covering device protection, anti-malware strategies, and securing systems against modern threats.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-16.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-16.png" alt="Network Defense" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Network Defense</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed training in network defense, covering firewalls, intrusion detection, access control lists, and network monitoring best practices.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-17.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-17.png" alt="Cyber Threat Management" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Cyber Threat Management</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed training in cyber threat management, covering threat intelligence, incident response, and risk management frameworks.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-18.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-18.png" alt="Digital Safety and Security Awareness" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Digital Safety and Security Awareness</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed the Cisco and OpenEDG course on digital safety, covering online privacy, recognizing threats and social engineering, and digital well-being.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-19.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-19.png" alt="Introduction to Data Science" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Introduction to Data Science</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed an introduction to data science, covering the data science process, data analysis concepts, and real-world applications.</p>
      </div>
    </div>
    <div class="card-item reveal">
      <div class="card-img"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-20.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/certs/cert-20.png" alt="Security and Connectivity Support" loading="lazy" class="cert-img" /></picture></div>
      <div class="card-body">
        <h3>Security and Connectivity Support</h3>
        <div class="card-tags"><span class="card-tag">Cisco NetAcad</span><span class="card-tag">2025</span></div>
        <p>Completed training in security and connectivity support, covering network troubleshooting, IP addressing, command-line diagnostics, and responding to common threats.</p>
      </div>
    </div>
  </div>
</div>
<!-- /wp:html -->' WHERE ID=44;

-- case study page 100 (upsert, UTC dates)
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (100, 1, '2026-09-09 16:24:38', '2026-09-09 16:24:38', '<!-- wp:html -->
<div class="page-section">
  <div class="tagline reveal reveal-delay-1">Case Study</div>
  <h2 class="reveal reveal-delay-2">Palale Enrollment System — Case Study</h2>
  <p class="section-sub reveal reveal-delay-3">A complete web-based enrollment system handling student registration, subject management, and enrollment records with a secure admin dashboard — deployed live on Render.</p>
  <div class="cs-hero reveal"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/enrollment-system.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/enrollment-system.png" alt="Palale Enrollment System — Case Study screenshot"></picture></div>
  <div class="cs-meta reveal"><span class="card-tag">PHP</span><span class="card-tag">MySQL</span><span class="card-tag">HTML</span><span class="card-tag">CSS</span></div>
  <div class="cs-section reveal"><h2>The Problem</h2><p>Enrollment processes that depend on paper records and spreadsheets are slow, error-prone, and hard to audit. The goal of this project was to replace that workflow with a system where student data stays organized, enrollment status is clear at a glance, and administrators can manage everything from one place.</p></div>
  <div class="cs-section reveal"><h2>What I Built</h2><ul><li><strong>Student registration</strong> with input validation so records stay clean from the start.</li>
        <li><strong>Subject management</strong> — add, edit, and organize subjects per school term.</li>
        <li><strong>Enrollment records</strong> that track each student''s status through the process.</li>
        <li><strong>Secure admin dashboard</strong> separating administrative tools from student-facing pages.</li></ul></div>
  <div class="cs-section reveal"><h2>What I Learned</h2><p>The biggest challenge was modeling the enrollment workflow so records could never end up in a half-finished state. I solved it by designing the database schema around clear statuses and building the admin dashboard around those states. Deploying on Render also taught me a lot about configuring PHP applications and MySQL services in the cloud.</p></div>
  <div class="cs-links reveal"><a class="btn-gradient primary" href="https://palale-enrollment-system.onrender.com/" target="_blank" rel="noopener">View Live Site →</a><a class="btn-gradient outline" href="https://jazzfer.great-site.net/portfolio/">Back to Portfolio</a></div>
</div>
<!-- /wp:html -->', 'Palale Enrollment System — Case Study', '', 'publish', 'closed', 'closed', '', 'palale-enrollment-system', '', '', '2026-09-09 16:24:38', '2026-09-09 16:24:38', '', 12, 'https://jazzfer.great-site.net/?page_id=100', 0, 'page', '', 0) ON DUPLICATE KEY UPDATE post_content=VALUES(post_content), post_title=VALUES(post_title), post_status=VALUES(post_status), post_name=VALUES(post_name), post_modified=VALUES(post_modified), post_modified_gmt=VALUES(post_modified_gmt), post_date=VALUES(post_date), post_date_gmt=VALUES(post_date_gmt), post_parent=VALUES(post_parent);

-- case study page 101 (upsert, UTC dates)
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (101, 1, '2026-09-09 16:24:38', '2026-09-09 16:24:38', '<!-- wp:html -->
<div class="page-section">
  <div class="tagline reveal reveal-delay-1">Case Study</div>
  <h2 class="reveal reveal-delay-2">Quizard — Case Study</h2>
  <p class="section-sub reveal reveal-delay-3">An interactive quiz platform with dynamic question generation, score tracking, and a fully responsive interface — deployed on GitHub Pages.</p>
  <div class="cs-hero reveal"><picture><source srcset="https://jazzfer.great-site.net/wp-content/uploads/2026/09/quizard.webp" type="image/webp"><img src="https://jazzfer.great-site.net/wp-content/uploads/2026/09/quizard.png" alt="Quizard — Case Study screenshot"></picture></div>
  <div class="cs-meta reveal"><span class="card-tag">JavaScript</span><span class="card-tag">HTML5</span><span class="card-tag">CSS3</span><span class="card-tag">GitHub Pages</span></div>
  <div class="cs-section reveal"><h2>The Problem</h2><p>Studying is easier with instant feedback, but most quiz tools are heavy or full of distractions. Quizard was built as a lightweight, focused quiz app: open it, answer questions, see your score immediately — nothing else gets in the way.</p></div>
  <div class="cs-section reveal"><h2>What I Built</h2><ul><li><strong>Dynamic question generation</strong> so every session feels fresh instead of repeating a fixed list.</li>
        <li><strong>Instant score tracking</strong> with clear right/wrong feedback after each round.</li>
        <li><strong>Fully responsive interface</strong> that works comfortably on phones, tablets, and desktops.</li>
        <li><strong>Zero-backend hosting</strong> on GitHub Pages — fast, free, and always available.</li></ul></div>
  <div class="cs-section reveal"><h2>What I Learned</h2><p>Building the quiz logic in vanilla JavaScript — without a framework — was a deliberate choice. It forced clean state management for questions, answers, and scoring, and made the app fast enough to feel instant on slow connections. Shipping it through GitHub Pages rounded out the deployment workflow.</p></div>
  <div class="cs-links reveal"><a class="btn-gradient primary" href="https://quizard-app.github.io/" target="_blank" rel="noopener">View Live Site →</a><a class="btn-gradient outline" href="https://jazzfer.great-site.net/portfolio/">Back to Portfolio</a></div>
</div>
<!-- /wp:html -->', 'Quizard — Case Study', '', 'publish', 'closed', 'closed', '', 'quizard', '', '', '2026-09-09 16:24:38', '2026-09-09 16:24:38', '', 12, 'https://jazzfer.great-site.net/?page_id=101', 0, 'page', '', 0) ON DUPLICATE KEY UPDATE post_content=VALUES(post_content), post_title=VALUES(post_title), post_status=VALUES(post_status), post_name=VALUES(post_name), post_modified=VALUES(post_modified), post_modified_gmt=VALUES(post_modified_gmt), post_date=VALUES(post_date), post_date_gmt=VALUES(post_date_gmt), post_parent=VALUES(post_parent);

