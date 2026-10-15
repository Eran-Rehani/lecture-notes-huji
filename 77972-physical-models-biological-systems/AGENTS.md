# Repository Guidelines

## Goal & Course Context

Support learning for **77972 — Physical Models of Biological Systems** through physical understanding, accurate derivations, and quantitative connections to biological phenomena.

Use the syllabus when available for scope, `models-notes-2026.pdf` and lectures for conventions, `PMBS-HW2026.pdf` for assignments, and `Nelson - Physical Models of Living systems - New 21-07-29PENNEDITION-RGB.pdf` for textbook background. Use `Lecture Transcripts/` for sessions. Auto-generated transcripts may contain errors. Preserve originals, filenames, and UTF-8 text; quote paths containing spaces.

## Course Assistance

Explain biological context and physical meaning before mathematics. Define variables, parameters, assumptions, units, and probability distributions. Follow course notation. Distinguish observations, model assumptions, predictions, and limits of validity. Cite sources; distinguish supplementary derivations and uncertainty. Match the requested language.

## Lecture Notes LaTeX

Follow the GR course's `textbooknotes.sty` format for new lecture notes. Ensure the style exists beside the master before using it; the reference copy is `../77909 - GR/textbooknotes.sty`. Start a new master with:

```latex
\documentclass[10pt,a4paper,twoside,openany]{scrbook}
\usepackage[palatino]{textbooknotes}
```

Keep the style beside the master. Defaults are Palatino/A4. Modify it only when requested.

- Use `\chapter` for lectures. Include fragments once from the master; fragments omit document-class and document environments.
- Boxed `theorem`, `lemma`, `proposition`, `corollary`, `definition`, and `example` require title and label-suffix arguments: `\begin{definition}{Expectation}{expectation}` … `\end{definition}`; reference with `\ref{def:expectation}`. They share a chapter-based counter. Use `remark` for pitfalls and `proof` for proofs.
- Use `\sidenote{...}` for brief margin notes and the defined math macros: `\dd`, `\ii`, `\ee`, `\ket`, `\bra`, `\braket`, `\abs`, `\norm`.
- Math, graphics, tables, units, and hyperlinks are already loaded. Avoid conflicting imports. Undefined shortcuts `\thm`, `\dfn`, `\ex`, and `\nt` from `$summarize` must not be used.
- Include biological motivation, complete derivations, result interpretations, and useful examples. Explain approximations, characteristic scales, and links to measurements. Label numbered sections and equations. Tutorials (`תרגיל`) require an explicitly selected transcript and complete problem solutions.
- Compile the actual master with pdfLaTeX, repeating for references; inspect equations, layout, and references. Hebrew requires additional language/font configuration and rendering checks. Report source and PDF paths.

## Agent Workflow & Verification

Frame work around **Goal, Context, Constraints, and Done-when**. Batch relevant reads; preserve work and make minimal complete changes without placeholders. Check dimensions, signs, probability normalization, limiting cases, and biologically meaningful parameter ranges. For numerical work, state methods, units, random seeds when relevant, and convergence checks. Inspect `git status --short`, tracked whitespace with `git diff --check`, and untracked files separately. After two attempts blocked by the same error, stop and quote it exactly with paths.

## Safety & Delegation

Never commit or push without explicit instruction. Never execute destructive operations or sudo commands; print them for the user. Explain irreversible actions; never expose secrets. Keep planning, review, verification, and trivial edits local. Use `$delegate` for substantive implementation under its routing, exclusions, and $0.50/call and $5/day limits.

## Done-when

Finish when the goal is met, checks pass, and changes, verification, and uncertainty are reported. User instructions take precedence; report conflicts.

<!-- ======================================================================== -->
<!-- LECTURE SUMMARY RULES — Task 1 (confirmed by user)                      -->
<!-- ======================================================================== -->

## Lecture Summary Rules

Generate lecture summaries from the lecture transcripts found in this course folder. Write every summary in LaTeX following the exact conventions below. Save outputs using the agreed naming and location conventions. Never alter the original transcripts.

### Source & Preservation
- Source transcripts: look in any transcript folder present in this course folder (e.g., `lectures transcripts/`, `lectuure_transcripts/`, `Lecture Transcripts/`, `Lectures/`). Preserve original filenames and UTF-8 text exactly.
- Never modify, delete, rename, or overwrite any original transcript file.

### Lecture File Metadata
- Begin every new lecture-summary `.tex` file with a LaTeX comment header (`%` on every line), before any typeset content. Include the course number and name, academic year and semester, actual lecture number, lecture date (`YYYY-MM-DD`), summary title, lecturer, and summarizer; mark unknown required fields as `Unknown` rather than guessing. Transcript paths, timestamps, recording URLs, and supporting references may be retained in comments for provenance.
- Distinguish the document's chapter/section number from the actual lecture number when they differ (for example, Introduction is Chapter 0 but comes from Lecture 1). Preserve original lecture metadata when revising the file; record a separate revision date if needed. These comments must not appear in the rendered PDF.

### LaTeX Style & Document Class
- Document class: `scrbook` (KOMA-Script) for each course master.
- Each lecture = a standalone subfile named `LecXX_Title.tex` (XX = lecture number, Title = brief topic in English, snake_case or CamelCase). These subfiles are included in the course `main.tex` (e.g., via `\input{Lec01_...}`).
- Reuse `textbooknotes.sty` where available (`77501`, `77909`, `77972`); add packages/commands as needed only for this course.
- All equations and figures must be labeled (`\label{...}`) and numbered.
- Use `align` (not `eqnarray`) for multi-line derivations; label only referenced equations.
- Use semantic section headings (`\section*`, `\section`) and descriptive labels (e.g., `eq:...`, `def:...`, `fig:...`).
- Use the `textbooknotes` environments exactly: `\begin{definition}{Title}{label}` etc. No undefined shortcuts (`\thm`, `\dfn`, `\ex`, `\nt`).

### Structure (per lecture section / `LecXX_Title.tex`)
- Title: lecture number, date (if known), and subject title.
- Overview: 1–3 sentences setting context.
- Learning objectives: brief bullet list.
- Key definitions: `definition` environment (or course-appropriate equivalent); define symbols on first use.
- Theorems / Results: `theorem`, `lemma`, `proposition`, `corollary` with title and label suffix.
- Proofs / Derivations: `proof` environment (or `align` derivation with explanation); show key intermediate steps, not just final result.
- Examples: `example` environment; include exam-relevant examples and, when appropriate, a fun fact / anecdote.
- Open questions / Remarks: brief note of unresolved ambiguities, transcript errors flagged, or future directions.
- Summary: concise recap of core results.
- Ordering within the file: flexible per lecture — use whatever ordering best fits that lecture's content and complexity.

### Content Priorities
- Always include: definitions, theorems/results, proofs/derivations, examples, exam-relevant remarks, and further reading (textbook name + chapter or source URL). Retain attribution for external figures and quoted material where needed.
- End each summary with **Further Reading**. Do not add a separate Sources section or list the lecture transcript, its filename, or its timestamps in the rendered notes; transcript provenance belongs only in LaTeX comments. This course rule overrides any skill requirement to print transcript source listings.
- Include fun facts / anecdotes when they contribute to understanding.
- Omit: small talk, administrative remarks, repetition of transcript filler, unverified speculation.
- Translate Hebrew terminology into English (no original Hebrew term needed in parentheses); keep author/source names recognizable.
- Flag transcript errors or ambiguities explicitly (e.g., in a `remark` or text note) rather than silently correcting.
- State assumptions, units, coordinate conventions, approximation regimes, and check dimensions / limiting cases where applicable (physics/math courses).

### Diagrams & Figures
- For every lecture summary, assess the transcript and that lesson's material for concepts that benefit from a visual. Add TikZ diagrams and/or figures from the web when they improve understanding or exam revision; keep the summary focused and concise.
- Use TikZ for clear schematics of biological mechanisms, model interactions, physical setups, and conceptual relationships. Use sourced web figures when experimental data, microscopy, or biological structures are better explained by an existing image. Do not add decorative or redundant figures.
- Verify web figures against their original source, prefer authoritative sources with clear reuse permissions, save the image locally, and cite its source URL and attribution in the caption. Identify adaptations and distinguish schematic curves from measured data.
- Place each visual near its explanation in a numbered `figure` environment with a descriptive `\caption` and `\label{fig:...}`. Explain what to notice; define symbols and label axes, units, and relevant processes.
- Compile the actual master and inspect the rendered figures for legibility, correct scientific content, and layout. Do not use visuals to introduce material beyond the lesson's scope.

### Naming & Placement
- Filename: `LecXX_Title.tex` (e.g., `Lec01_Stellar_Structure.tex`, `Lec02_Introduction.tex`).
- Placement: inside this course folder in `Lecture_Summaries/` if that directory exists; otherwise in the course folder root. Do not create unrelated subfolders unless instructed.
- Each `LecXX_Title.tex` must compile as a standalone fragment (no `\documentclass`) when included in `main.tex`, or as a minimal standalone if compiled individually.

### Length & Completeness
- Each lecture = one `\section` inside the course `main.tex`. Each subject/course part = composed of those sections.
- No fixed page target. Length should match the lecture's length, complexity, derivations, and depth. Elaborate when it makes material more complete or clearer.
- Selective but complete: focus on core concepts; expand when needed for understanding.

### Language & Tone
- Language: English.
- Tone: formal but with a conversational undergrad-textbook quality. Rigor appropriate for exam-level revision for myself.
- Target reader: myself (revision). Secondarily understandable by a peer or exam audience.

### Verification
- After creating/updating a `LecXX_Title.tex`, verify that `main.tex` includes it correctly, that compilation succeeds (if compiling), and that no original transcript was altered (`git status` / `diff` check where applicable).
- Report any unresolved ambiguities, missing sources, or transcript errors explicitly in the output or comments.
