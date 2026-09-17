#set document(title: "Kamil Zwoiński — CV", author: "Kamil Zwoiński")
#set page(paper: "a4", margin: (x: 1.6cm, y: 1.5cm), numbering: none)
#set text(font: "Carlito", size: 11pt, lang: "en")
#set par(leading: 0.8em)

// ---------- colors (print-safe adaptation of site palette) ----------
#let accent = rgb("#1a4d8f")   // site blue hue family
#let green  = rgb("#4f7a2e")   // site green #9ccb7a, darkened for paper
#let ink    = rgb("#1f2937")   // main text
#let muted  = rgb("#555555")   // meta text / special symbols

#let mono = "Liberation Mono"

// ---------- helpers ----------
#let section(title) = {
  v(1em, weak: true)
  text(font: mono, size: 12.5pt, weight: "bold", fill: ink, title)
  v(0.15em, weak: true)
  line(length: 100%, stroke: 0.7pt + green)
  v(0.5em, weak: true)
}

#let entry(name, meta) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    text(font: mono, size: 10pt, weight: "bold", fill: ink, name),
    text(size: 9.5pt, fill: muted, meta),
  )
  v(0.45em, weak: true)
}

#let bullet = text("• ", fill: green)

#let skill(label, body) = text(size: 10.5pt)[
  #text(font: mono, size: 9.5pt, weight: "bold", fill: accent)[#label] \
  #text(size: 10.5pt)[#body]
]

// ---------- header ----------
// Prompt line mirrors the site's prompt: guest green, @ and :~$ gray,
// hostname blue, command white.
#text(font: mono, size: 9.5pt)[
  #text(fill: green)[guest]#text(fill: muted)[@]#text(fill: accent)[kamilzwoinski.com]#text(fill: muted)[:\~\$]#text(fill: ink)[ whoami]
]
#v(0.9em, weak: true)

#grid(
  columns: (1fr, auto),
  column-gutter: 2em,
  [
    #text(font: mono, size: 24pt, weight: "bold", fill: ink, "KAMIL ZWOIŃSKI")
    #v(0.1em, weak: true)
    #text(size: 11.5pt, fill: muted, "Computer Science student — University of Gdańsk")
  ],
  [
    #align(right)[
      #set text(font: mono, size: 9.5pt)
      #set par(leading: 0.12em)
      #grid(
        columns: (auto, auto),
        column-gutter: 0.5em,
        row-gutter: 0.405em,
        align: (right, left),
        text(fill: accent)[github],
        text(fill: green)[#link("https://github.com/szfkamil")[github.com/szfkamil]],
        text(fill: accent)[linkedin],
        text(fill: green)[#link("https://www.linkedin.com/in/kamil-zwoiński-9a5461229")[linkedin.com/in/kamil-zwoiński]],
        text(fill: accent)[email],
        text(fill: green)[#link("mailto:professional@kamilzwoinski.com")[professional\@kamilzwoinski.com]],
      )
    ]
  ],
)

#v(0.9em, weak: true)

// ---------- summary ----------
#section("SUMMARY")
#text(size: 10.5pt)[
  Computer science student with a perfect academic record and strong Java fundamentals. Comfortable
  working in Linux, Git, and shell as a default development environment; building projects in PostgreSQL,
  Python, and embedded C; currently deepening data structures and algorithms while looking for a
  software engineering internship.
]

// ---------- education ----------
#section("EDUCATION")
#entry("University of Gdańsk — Computer Science, BSc (licencjat)", "Oct 2025 – expected 2028")
#text(size: 10.5pt)[
  Faculty of Mathematics, Physics and Informatics \
  #bullet 5.0 GPA — highest grade in every completed course (grading scale 2–5) \
  #bullet Completed: Discrete Mathematics I–II, Databases, Programming Languages (Python), Mathematical Analysis, Linear Algebra, Web Technologies \
  #bullet In progress: Object-Oriented Programming (Java), Algorithms and Data Structures I, Operating Systems
]

// ---------- projects (most recent first) ----------
#section("PROJECTS")

#entry(
  [*#text(fill: green)[#link("https://github.com/szfkamil/db-academic-library")[db-academic-library]]* _— relational database system, PostgreSQL_],
  "2025–present",
)
#text(size: 10.5pt)[
  #bullet Designed a 26-entity relational schema for academic library cataloging and loans \
  #bullet Implemented stored procedures, triggers, views, functions and an ERD model \
  #bullet Modeled on professional standards (FRBR, MARC21); enforces per-user-type loan policies \
  #bullet Tech: PostgreSQL, SQL, database design, ER modeling
]

#entry([*#text(fill: green)[programming-languages]* _— Python coursework_], "2025–present")
#text(size: 10.5pt)[
  #bullet Chess engine — OOP design with unit tests \
  #bullet World simulation — inheritance hierarchy (animals/plants), event-driven logic \
  #bullet Invoice/shop system — full test-double suite (mock, stub, fake, spy, dummy), 15 unit tests \
  #bullet Tech: Python, OOP, unit testing
]

#entry(
  [*#text(fill: green)[ergonomic keyboards]* _— QMK firmware & hardware_],
  "2024–present",
)
#text(size: 10.5pt)[
  #bullet Maintain custom forks of QMK firmware (C) implementing my own changes for ergonomic 40% split keyboards \
  #bullet Co-authored the community build guide for the ultra-compact split ergonomic Dilemma v3: #text(fill: green)[#link("https://github.com/AlexanderJones-KB/Dilemma_v3_Procyon")[Dilemma_v3_Procyon]] \
  #bullet Documented hardware customization, soldering procedures, and precise spatial specifications for seamless assembly \
  #bullet Assemble and troubleshoot custom builds: PCB/electronics sourcing, hand soldering, hardware debugging in KiCad \
  #bullet Tech: C, QMK, KiCad, electronics
]

#entry(
  [*#text(fill: green)[#link("https://github.com/szfkamil/szfkamil.github.io")[szfkamil.github.io]]* _— personal website_],
  "2023–present",
)
#text(size: 10.5pt)[
  #bullet Static personal site, hand-written HTML and SCSS \
  #bullet Responsive landing page with a terminal-inspired visual identity \
  #bullet Tech: HTML, SCSS
]

// ---------- skills ----------
#section("TECHNICAL SKILLS")
#grid(
  columns: 2,
  column-gutter: 1.8em,
  row-gutter: 0.45em,
  skill("Programming:", "Java (OOP), Python, C (QMK firmware), C++, JavaScript (vanilla), SQL/PostgreSQL, HTML/SCSS"),
  skill("Tools & workflow:", "Linux (daily power user), git, vim, zsh"),
  skill("Hardware:", "KiCad, electronics, soldering, hardware debugging"),
  skill("Currently learning:", "Assembly, data structures & algorithms"),
)

// ---------- languages ----------
#section("LANGUAGES")
#grid(
  columns: 2,
  column-gutter: 3.8em,
  text(size: 10.5pt, [#bullet Polish — native speaker]),
  text(size: 10.5pt, [#bullet English — C1 (CEFR)]),
)
