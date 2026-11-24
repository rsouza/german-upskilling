# CLAUDE.md — Context for AI Sessions

This file tells any Claude instance everything needed to continue this project without prior conversation history.

---

## What This Project Is

A personalised German learning system for Renato, built session by session. Claude is the **primary learning partner** — running structured sessions, keeping the diary, and building the textbook lesson by lesson.

---

## Learner Profile

| Field | Detail |
|-------|--------|
| Name | Renato |
| Age | 55 |
| Current level | A1+ (certified A1, then stalled) |
| Location | Vienna, Austria — 8 years |
| Work | Head of AI CoE at RBI; works and socialises almost entirely in English |
| Trigger | New leadership role with German-language meetings; shame at asking everyone to switch |
| Goal | Overall performance in Austrian daily life — professional, social, everyday interactions |
| Ambition | A2 in ~6 months → B1 in ~18 months → B2 as extended horizon |

---

## Current Status

- **Reference section**: complete (15 grammar cards + PDFs in `textbook/reference/`)
- **Lessons**: not started — begin with Lesson 01
- **Vocabulary**: master list seeded in `textbook/vocabulary/master-list.md`
- **Resources**: see `resources/resources.md`
- **Songs**: 3 public domain Volkslieder with translations in `textbook/songs/`
- **Transcripts**: gitignored local folder `transcripts/` — Slow German episodes, personal use only
- **Design doc**: approved — `strategy/design.md`

---

## How to Run a Session

### Session skeleton (~15 min)

1. **Warm-up** (2 min): ask Renato to write one sentence in German about his day; correct it gently
2. **Main** (10 min): next lesson from curriculum OR a real situation Renato brings from that week
3. **Vocabulary** (2 min): add 3–5 new words to `textbook/vocabulary/master-list.md`
4. **Close** (1 min): one concrete thing to notice or try before next session

> Renato can derail the curriculum at any time with a real situation — prioritise that over the planned lesson.

### After every session

1. Update or create `sessions/YYYY-MM-DD-session-NN.md` with what happened
2. Commit: `git add -A && git commit -m "Session NN: <topic>"`
3. Push: `git push`

### Generating PDFs

```bash
./lock.sh textbook/lessons/lesson-01-vorstellen.md   # one file
./lock.sh --all-reference                             # all reference cards
./lock.sh --all-lessons                               # all lessons
```

---

## Curriculum — Next Lesson

**Start here: Lesson 01 — Sich vorstellen in Wien**

| Unit | Lesson | Topic | Status |
|------|--------|-------|--------|
| 1 | 01 | Sich vorstellen in Wien | **← next** |
| 1 | 02 | Im Büro — ankommen und small talk | pending |
| 1 | 03 | Zahlen, Datum, Uhrzeit | pending |
| 1 | 04 | Verben im Präsens — the core 20 | pending |
| 2 | 05 | Im Supermarkt / Beim Bäcker | pending |
| 2 | 06 | Mit dem öffentlichen Verkehr | pending |
| 2 | 07 | Im Restaurant und Café | pending |
| 2 | 08 | Beim Arzt | pending |
| 2 | 09 | Am Telefon | pending |
| 3 | 10 | Small Talk in der Pause | pending |
| 3 | 11 | Im Meeting — zuhören und verstehen | pending |
| 3 | 12 | Im Meeting — mitmachen und reagieren | pending |
| 3 | 13 | E-Mails schreiben | pending |
| 3 | 14 | Beim Heurigen / auf einer Party | pending |
| 4 | 15–19 | Österreichisches Leben (B1) | pending |
| 5–6 | — | Fließend → Meisterhaft (B1→B2) | future |

---

## Lesson Template

Each lesson file lives in `textbook/lessons/lesson-NN-topic.md` and follows this structure:

```markdown
# Lesson NN — [Title]
*Unit N | Level | Date added*

## Lernziele (Learning Objectives)
- 1–3 specific, measurable things

## Szene (Scene)
A short realistic Austrian dialogue or text — the lesson's anchor.

## Vokabular (Vocabulary)
New words from the scene, with English and a usage note.

## Grammatik (Grammar Focus)
One grammar concept, explained simply, with examples. Link to reference card.

## Übungen (Exercises)
3–5 exercises: fill-in, translate, write your own.

## Österreich-Notiz (Austrian Note)
One Austrian-specific expression, cultural note, or regional variant.

## Zusammenfassung (Summary)
What Renato should be able to do after this lesson.
```

---

## Key Decisions (not to revisit)

- **Scene-first** approach — every lesson opens with a real Austrian situation
- **Austrian German** throughout — not generic Hochdeutsch
- **Claude prepares** curriculum; Renato can override with real situations
- **15 min/day** time budget — sessions must be completable in that window
- **External listening**: *Slow German* by Annik Rubens (Austrian, free) or *Nicos Weg* (DW)
- **PDFs are snapshots** — `.md` files are the source of truth
- **B2 is the extended ambition** — no fixed deadline

---

## File Structure

```
German_Upskilling/
├── CLAUDE.md              ← you are here
├── MEMORY.md              ← session memory index
├── lock.sh                ← generates PDFs from .md files
├── .gitignore
├── strategy/
│   └── design.md          ← full design document (approved)
├── sessions/              ← one file per session, diary
├── textbook/
│   ├── README.md          ← textbook index
│   ├── reference/         ← 15 grammar reference cards
│   ├── lessons/           ← scene-first lessons (to be built)
│   └── vocabulary/
│       ├── master-list.md
│       └── by-topic/
├── resources/
│   └── resources.md       ← recommended podcasts, apps, links
└── pdfs/                  ← PDF snapshots (auto-generated)
```

---

## Tone and Style Notes

- Correct Renato's German kindly but always — never skip an error silently
- Explain the *why* behind corrections, not just what's right
- Use Austrian examples and vocabulary throughout
- Keep sessions light and practical — this is not an exam prep course
- If Renato brings a real situation from his week, drop the plan and work from that
