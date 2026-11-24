# German Upskilling — Design Document
*Agreed 2026-11-24 | Renato × Claude*

---

## Intent

Renato has lived in Vienna for 8 years and holds an A1 certificate but progress has stalled due to an English-dominant work and social environment. A new leadership role now creates daily German-language meetings and broader social pressure. The goal is **overall performance in Austrian daily life** — professional, social, and everyday interactions — not just meeting survival.

---

## Goals

- Reach functional A2 within ~6 months; working B1 within ~12–18 months
- Reach B2 (genuinely fluent in Austrian daily and professional life) within ~3 years — extended horizon, not a fixed deadline
- Be able to follow and contribute to German-language meetings within 3 months
- Handle everyday Austrian situations with confidence: shops, doctors, Behörden, social events, friends
- Build a sustainable daily habit that fits a 15-min/day time budget
- Develop a custom textbook, built lesson by lesson, that reflects Renato's real life in Vienna

## Non-goals

- Native-level fluency or accent elimination
- Formal certification exams (unless Renato decides to target one later)
- Grammar for grammar's sake — always context-first

## Anti-goals

- Another Duolingo-style repetitive loop — if it feels like a game reward system, it's wrong
- Generic textbooks that ignore Austrian German (Grüß Gott, Bitte, Servus, regional vocabulary)
- Over-engineering that makes skipping a session feel like falling behind

---

## Constraints

- **Time**: ~15 min/day — sessions must be completable in that window
- **Input only via text**: Claude cannot assess spoken pronunciation; audio practice is external
- **Austrian context**: vocabulary, expressions, and cultural notes must reflect Vienna/Austria, not generic Hochdeutsch

---

## Approaches Considered

| Approach | Description | Why not chosen |
|----------|-------------|----------------|
| Structured course only (VHS) | Enroll in A2/B1 Volkshochschule course | Good but slow, general, no personalization |
| Immersion shock | Stop asking people to switch; absorb | Too brutal at A1+ without structure |
| Tutor-only | Professional tutor 2×/week | Good for speaking but no written curriculum or diary |
| **Chosen: Claude-led hybrid** | Claude as primary learning partner + external listening + occasional real speaking | Personalized, on-demand, tracks Renato's specific vocabulary and progress, sustainable |

---

## The How

### Learning Partnership Model

**Claude's role:**
- Design and deliver curriculum session by session
- Conduct structured German practice (reading, writing, translation, role-play via text)
- Keep the learning diary after each session
- Adapt curriculum when real situations arise mid-session
- Track vocabulary, grammar covered, and gaps

**External components:**
- **Daily podcast** (15 min listening): *Slow German* by Annik Rubens (Austrian, free) or *Nicos Weg* (DW, A1–B1 path with video)
- **Occasional speaking practice**: Tandem app language exchange or one monthly VHS drop-in session — to be introduced at A2 stage

**Renato's commitment:**
- One session per day (~15 min)
- Optionally: bring a real situation from that week to any session and we'll work from it instead

---

### Session Format (Option C)

Each session follows this skeleton — but can be abandoned for a real situation:

1. **Warm-up** (2 min): one sentence in German about Renato's day, corrected if needed
2. **Main** (10 min): new content from curriculum OR real situation Renato brings
3. **Vocabulary** (2 min): 3–5 new words added to master list
4. **Close** (1 min): one thing to notice/try before next session

---

### Textbook Structure

```
German_Upskilling/
├── textbook/
│   ├── reference/          ← permanent grammar cards (linked from lessons)
│   │   ├── pronouns.md
│   │   ├── articles-cases.md
│   │   ├── verbs-core.md
│   │   └── prepositions.md
│   ├── lessons/            ← one file per lesson
│   │   ├── lesson-01-...md
│   │   └── ...
│   └── vocabulary/
│       ├── master-list.md
│       └── by-topic/
├── sessions/               ← diary, one file per session
├── strategy/               ← this document and notes
└── resources/              ← podcast links, app recommendations, external materials
```

**Each lesson follows this template:**
- Learning objectives (2–3 specific things)
- Scene (a realistic Austrian situation, dialogue or text)
- Vocabulary pulled from the scene
- Grammar focus (one concept, explained simply, linked to reference)
- Exercises (3–5 items: fill-in, translate, write your own)
- Austrian note (regional expression, cultural context, or Viennese variant)

**Format**: Markdown (`.md`) as source of truth; PDF snapshots generated on demand via pandoc.
**Version control**: Git — every lesson added or updated = one commit.

---

### Curriculum — Units and Lessons

**Unit 1 — Zurück ins Spiel (A1+ Review + Gaps)** ← start here
- Lesson 01: Sich vorstellen in Wien
- Lesson 02: Im Büro — ankommen und small talk
- Lesson 03: Zahlen, Datum, Uhrzeit (expanded review)
- Lesson 04: Verben im Präsens — the core 20 verbs

**Unit 2 — Das Wiener Alltagsleben (A2 Build)**
- Lesson 05: Im Supermarkt / Beim Bäcker
- Lesson 06: Mit dem öffentlichen Verkehr
- Lesson 07: Im Restaurant und Café
- Lesson 08: Beim Arzt
- Lesson 09: Am Telefon

**Unit 3 — Sozial und Professionell (A2 → B1)**
- Lesson 10: Small Talk in der Pause
- Lesson 11: Im Meeting — zuhören und verstehen
- Lesson 12: Im Meeting — mitmachen und reagieren
- Lesson 13: E-Mails schreiben
- Lesson 14: Beim Heurigen / auf einer Party

**Unit 4 — Österreichisches Leben (B1)**
- Lesson 15: Pläne machen mit Freunden
- Lesson 16: Über die Arbeit erzählen
- Lesson 17: Beim Amt / Behörden
- Lesson 18: Meinungen ausdrücken
- Lesson 19: Einkaufen und Reklamieren

**Unit 5 — Fließend auf Österreichisch (B1→B2)**
- Complex meeting facilitation and negotiation
- Austrian news and media comprehension
- Nuanced opinion and debate
- Formal and informal written communication

**Unit 6 — Meisterhaft (B2)**
- Advanced professional Austrian German
- Cultural fluency (humor, indirectness, Viennese register)
- Spontaneous conversation on complex topics

*Units 3–6 will be refined as Renato progresses — curriculum adapts to real gaps. B2 is an extended ambition, not a fixed deadline.*

---

### Grammar Sequencing (embedded in lessons)

| Stage | Grammar |
|-------|---------|
| Unit 1 | Present tense review, Nominative/Accusative articles, possessives |
| Unit 2 | Dative case, modal verbs (können/müssen/wollen), Perfekt tense |
| Unit 3 | Separable verbs, subordinate clauses (weil/dass/wenn), Konjunktiv II (politeness) |
| Unit 4 | Relative clauses, Präteritum (sein/haben/modals), Passive |

---

### Source Material Integration

From the analyzed workbooks:
- **MyGermanStudies.docx**: lessons 1–6 provide the vocabulary base for Unit 1; will be incorporated directly
- **Inlingua A1 notes**: article/case/preposition content feeds reference cards
- **A2 course notes**: Perfekt, adjectives, and conversation topics feed Unit 2–3
- **Verb handbook**: feeds `verbs-core.md` reference card

---

## What's Left to Build

1. The reference cards (`reference/`)
2. Lesson files, starting with Lesson 01
3. Master vocabulary list seeded from workbooks
4. `resources/resources.md` with podcast and app links
5. A PDF generation script (`make-pdf.sh`)

---

*This document is approved when Renato says so. After approval, we begin with the plan and then Lesson 01.*
