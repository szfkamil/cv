#set document(title: "Kamil Zwoiński — CV", author: "Kamil Zwoiński")
#set page(paper: "a4", margin: (x: 1.6cm, y: 1.5cm), numbering: none)
#set text(font: "Carlito", size: 11pt, lang: "en")
#set par(leading: 0.8em)

// ---------- colors ----------
#let accent = rgb("#1a4d8f")
#let muted  = rgb("#555555")

// ---------- helpers ----------
#let section(title) = {
  v(1em, weak: true)
  text(size: 13pt, weight: "bold", fill: accent, title)
  v(0.15em, weak: true)
  line(length: 100%, stroke: 0.6pt + accent)
  v(0.5em, weak: true)
}

#let entry(name, meta) = {
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    text(weight: "bold", name),
    text(size: 10pt, fill: muted, meta),
  )
  v(0.45em, weak: true)
}

#let bullet = text("• ", fill: accent)

// ---------- header ----------
#grid(
  columns: (1fr, auto),
  column-gutter: 2em,
  [
    #text(size: 26pt, weight: "bold", fill: accent, "KAMIL ZWOIŃSKI")
    #v(0.15em, weak: true)
    #text(size: 12pt, fill: muted, "Computer Science student — University of Gdańsk")
  ],
  [
    #set text(size: 10.5pt)
    #align(right)[
      Gdańsk, Poland \
      professional\@kamilzwoinski.com \
      #link("https://github.com/szfkamil")[github.com/szfkamil] \
      #link("https://www.linkedin.com/in/kamil-zwoiński-9a5461229")[linkedin.com/in/kamil-zwoiński]
    ]
  ],
)

#v(0.9em, weak: true)

// ---------- summary ----------
#section("SUMMARY")
#text(size: 10.5pt)[
  Computer science student with strong object-oriented programming fundamentals in Java and a perfect
  academic record (5.0 GPA on the 2–5 scale). Daily Linux power user — spends most of the working day
  in the terminal (shell, git, vim); several years of hands-on Linux and git experience. Pursuing a
  software engineering internship to apply OOP, algorithms, and database skills in a professional setting.
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

// ---------- projects ----------
#section("PROJECTS")

#entry(
  [*#link("https://github.com/szfkamil/db-academic-library")[db-academic-library]* _— relational database system, PostgreSQL_],
  "2025–present",
)
#text(size: 10.5pt)[
  #bullet Designed a 26-entity relational schema for academic library cataloging and loans \
  #bullet Implemented stored procedures, triggers, views, functions and an ERD model \
  #bullet Modeled on professional standards (FRBR, MARC21); enforces per-user-type loan policies \
  #bullet Tech: PostgreSQL, SQL, database design, ER modeling
]

#entry([*programming-languages* _— Python coursework_], "2025–present")
#text(size: 10.5pt)[
  #bullet Chess engine — OOP design with unit tests \
  #bullet World simulation — inheritance hierarchy (animals/plants), event-driven logic \
  #bullet Invoice/shop system — full test-double suite (mock, stub, fake, spy, dummy), 15 unit tests \
  #bullet Tech: Python, OOP, unit testing
]

#entry(
  [*ergonomic keyboards* _— QMK firmware & hardware_],
  "2024–present",
)
#text(size: 10.5pt)[
  #bullet Maintain custom forks of QMK firmware (C) implementing my own changes for ergonomic 40% split keyboards \
  #bullet Co-authored the community build guide for the ultra-compact split ergonomic Dilemma v3: #link("https://github.com/AlexanderJones-KB/Dilemma_v3_Procyon")[Dilemma_v3_Procyon] \
  #bullet Documented hardware customization, soldering procedures, and precise spatial specifications for seamless assembly \
  #bullet Assemble and troubleshoot custom builds: PCB/electronics sourcing, hand soldering, hardware debugging in KiCad \
  #bullet Tech: C, QMK, KiCad, electronics
]

// ---------- skills ----------
#section("TECHNICAL SKILLS")
#grid(
  columns: 2,
  column-gutter: 1.8em,
  row-gutter: 0.45em,
  text(size: 10.5pt, [#bullet #strong("Programming:") Java (OOP), Python, C (QMK firmware), C++, JavaScript (vanilla), SQL/PostgreSQL, HTML/SCSS]),
  text(size: 10.5pt, [#bullet #strong("Tools & workflow:") Linux (daily power user), git, vim, zsh]),
  text(size: 10.5pt, [#bullet #strong("Hardware:") KiCad, electronics, soldering, hardware debugging]),
  text(size: 10.5pt, [#bullet #strong("Currently learning:") Assembly, data structures & algorithms]),
)

// ---------- languages ----------
#section("LANGUAGES")
#grid(
  columns: 2,
  column-gutter: 3.8em,
  text(size: 10.5pt, [#bullet Polish — native speaker]),
  text(size: 10.5pt, [#bullet English — C1 (CEFR)]),
)
