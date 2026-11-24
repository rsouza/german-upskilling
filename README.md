# Mein Deutschkurs — A Personal German Learning System

A framework for building a personalised German course with AI, session by session. Austrian German focus.

## The Method

Most language apps optimise for engagement, not learning. This system takes a different approach:

- **Scene-first lessons** — every lesson opens with a real Austrian situation (a meeting, a café, a Behörde), not a grammar drill
- **AI as learning partner** — Claude runs the sessions, corrects your German, keeps the diary, and builds the textbook with you
- **15 minutes a day** — sessions are designed to fit a realistic daily window
- **Living textbook** — lessons and reference cards grow as you progress; nothing is fixed upfront
- **Austrian German throughout** — Grüß Gott, Jänner, Passt!, the Viennese register — not generic Hochdeutsch

## Structure

```
├── textbook/
│   ├── reference/     ← 15 grammar reference cards (pronouns → Austrian German)
│   ├── lessons/       ← scene-first lessons, built session by session
│   ├── songs/         ← public domain Volkslieder with translations
│   └── vocabulary/    ← master word list + topic lists
├── sessions/          ← learning diary, one entry per session
├── resources/         ← recommended podcasts, apps, links
├── strategy/          ← design document and learning strategy
├── pdfs/              ← PDF snapshots of reference cards and lessons
└── lock.sh            ← generate PDFs from markdown
```

## Grammar Reference Cards

A standalone grammar handbook — browse freely, independent of lessons. Each card has tables, examples in context, and Austrian notes.

| Card | Contents |
|------|----------|
| [Pronouns](textbook/reference/01-pronouns.md) | Personal, possessive, reflexive, relative |
| [Articles & Cases](textbook/reference/02-articles-cases.md) | der/die/das, all 4 cases |
| [Nouns](textbook/reference/03-nouns.md) | Gender, plural patterns |
| [Adjectives](textbook/reference/04-adjectives.md) | Endings, comparison |
| [Verbs: Present](textbook/reference/05-verbs-present.md) | Regular, irregular, sein/haben/werden |
| [Verbs: Past](textbook/reference/06-verbs-past.md) | Perfekt and Präteritum |
| [Verbs: Future](textbook/reference/07-verbs-future.md) | werden + Infinitiv |
| [Modal Verbs](textbook/reference/08-modal-verbs.md) | können, müssen, wollen, dürfen, sollen, mögen |
| [Separable & Reflexive](textbook/reference/09-separable-reflexive.md) | anrufen, sich vorstellen… |
| [Konjunktiv II](textbook/reference/10-konjunktiv-ii.md) | Polite requests and wishes |
| [Prepositions](textbook/reference/11-prepositions.md) | Accusative, dative, two-way |
| [Word Order](textbook/reference/12-word-order.md) | V2 rule, subordinate clauses |
| [Numbers, Dates & Time](textbook/reference/13-numbers-dates-time.md) | Austrian months, clock times |
| [Austrian German](textbook/reference/14-austrian-german.md) | Grüß Gott, Passt!, Erdäpfel… |

## Songs

Public domain Austrian and German folk songs with translations, vocabulary notes, and cultural context → [textbook/songs/](textbook/songs/)

## Resources

Recommended podcasts, apps, and tools → [resources/resources.md](resources/resources.md)

## Generating PDFs

```bash
./lock.sh textbook/reference/01-pronouns.md   # one file
./lock.sh --all-reference                      # all reference cards
./lock.sh --all-lessons                        # all lessons
```

## My Progress

This is my personal learning journey. Sessions and progress are tracked in `sessions/`.

| Lesson | Topic | Status |
|--------|-------|--------|
| 01 | Sich vorstellen in Wien | ✅ done |
| 02 | Im Büro — ankommen und small talk | next |
| … | | |

---

*Built with Claude | Austrian German focus | Started November 2026*
