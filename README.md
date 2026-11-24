# Mein Deutschkurs — My German Learning Journey

A personalised German learning system built session by session, with an Austrian focus.

## About

After 8 years in Vienna at A1+, it was time to get serious. This repo is a living textbook, grammar reference, and learning diary — built lesson by lesson in collaboration with Claude.

**Goal:** Overall performance in Austrian daily life — professional meetings, social events, everyday interactions, Behörden — through to B2.

**Approach:** Scene-first lessons anchored in real Viennese situations. No gamified apps. 15 minutes a day.

## Structure

```
├── textbook/
│   ├── reference/     ← 15 grammar reference cards (pronouns → Austrian German)
│   ├── lessons/       ← scene-first lessons, built lesson by lesson
│   └── vocabulary/    ← master word list + topic lists
├── sessions/          ← learning diary, one entry per session
├── resources/         ← recommended podcasts, apps, links
├── strategy/          ← design document and learning strategy
├── pdfs/              ← PDF snapshots of reference cards and lessons
└── lock.sh            ← generate PDFs from markdown
```

## Reference Cards

The grammar handbook — browse freely, independent of lessons.

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

## Resources

Recommended podcasts, apps, and tools → [resources/resources.md](resources/resources.md)

## Generating PDFs

```bash
./lock.sh textbook/reference/01-pronouns.md   # one file
./lock.sh --all-reference                      # all reference cards
./lock.sh --all-lessons                        # all lessons
```

---

*Built with Claude | Austrian German focus | Started November 2026*
