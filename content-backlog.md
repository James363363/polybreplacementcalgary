# Content Backlog — Poly-B Replacement Calgary

Tracking file for the twice-weekly SEO article production process. Read this
file at the start of every content-production run to see what's published,
what's queued, and what needs review before it's built.

Last updated: 2026-08-15

## Cadence & process

- 2 new articles per week, published Tuesdays and Fridays via a recurring
  scheduled task.
- Each run: pick the next queued topic (highest priority, not flagged
  overlap-risk), write it following `copywriting-guide.md` and
  `eeat-checklist.md` from the `calgary-seo-site-builder` skill, match the
  exact HTML structure in `html-template.md` and an existing page (e.g.
  `poly-b-warning-signs-calgary/index.html`) for byte-consistent styling,
  push via the GitHub Zapier connector (`github_create_or_update_file`,
  text content only — never the URL-fetch path, which corrupts binary),
  update `sitemap.xml`, then update this backlog: move the topic from
  Queued to Published, log the date and URL.
- Currently running auto-publish (no draft/review gate). Revisit this if
  quality issues show up — the `refresh-seo-rankings` skill's philosophy of
  surfacing new opportunities for approval rather than building unlimited
  pages unattended is the fallback model if this needs tightening.
- Known simplification: the footer nav (`Poly-B Guides` / `Services &
  Situations` columns) is currently hardcoded per page and has NOT been
  updated to link to new articles below. New pages get inbound links from
  relevant existing pages' body copy instead. Revisit if the backlog grows
  enough that a dedicated articles/guides index page becomes worthwhile.

## Published pages (11)

| Page | URL | Published |
|---|---|---|
| Homepage | `/` | initial build |
| Warning Signs | `/poly-b-warning-signs-calgary/` | initial build |
| Replacement Cost | `/poly-b-replacement-cost-calgary/` | initial build |
| Home Insurance | `/poly-b-home-insurance-alberta/` | initial build |
| Poly-B vs PEX vs Copper | `/poly-b-vs-pex-vs-copper/` | initial build |
| Buying/Selling | `/poly-b-home-buying-selling-calgary/` | initial build |
| Emergency Leak Repair | `/poly-b-emergency-leak-repair-calgary/` | initial build |
| Replacement Process | `/poly-b-replacement-process-calgary/` | initial build |
| Condo Repiping | `/poly-b-condo-repiping-calgary/` | initial build |
| Lawsuit History | `/poly-b-lawsuit-history-canada/` | initial build |
| About | `/about/` | initial build |
| Contact | `/contact/` | initial build |

## Week 1 articles (published 2026-08-15)

| Topic | URL | Notes |
|---|---|---|
| Can SharkBite fittings fix Poly-B pipe? | `/poly-b-sharkbite-fittings-calgary/` | Fact-checked: SharkBite doesn't list Poly-B on its general compatibility chart; a dedicated transition-only adapter exists and requires an internal stiffener. Framed as repair/transition only, never a repipe substitute. |
| Is Poly-B still used in new construction? | `/poly-b-new-construction-calgary/` | Fact-checked: resin manufacturing stopped ~1998, code formally dropped Poly-B in 2005, existing installs grandfathered. Original "decode the date stamp" angle was reworked — no consumer-facing source documents how to read an install date off the pipe, so the article redirects homeowners to their home's construction/permit date instead, plus the PB2110 stamp for material confirmation. |

## Queued topics (priority order, ready to build)

1. **Poly-B and home inspections — what inspectors actually flag.** Local-transactional-adjacent, ties into buying/selling and insurance. Check for overlap with existing insurance/buying-selling pages before writing; likely fine as a distinct angle (inspection process vs. financial consequences).
2. **Does a Poly-B repipe need a City of Calgary permit?** Informational, low competition, low overlap with existing pages.
3. **Poly-B pipe in specific Calgary communities built 1978–1995** (e.g., older established neighbourhoods) — strong local-intent angle, low overlap.
4. **Can you get a mortgage or refinance with Poly-B pipe in the home?** Financial-consequence angle, distinct from the insurance page's focus.
5. **How long does a full Poly-B repipe actually take?** Timeline-focused — check overlap with replacement-process page (may already cover this; verify before building).
6. **Poly-B pipe and rental/landlord obligations in Alberta.** Distinct audience (landlords, not owner-occupiers) — low overlap, untapped intent.
7. **What does a Poly-B home inspection report actually say?** (sample findings, terminology) — check overlap with #1 above; may need merging into one page per `scoring-formula.md`'s consolidation rule.
8. **Poly-B vs. galvanized steel pipe** (some older Calgary homes have galvanized, not Poly-B — disambiguation content, informational intent, likely lower priority/search volume; verify demand before building).

## Flagged overlap-risk — review before scheduling

These were identified as potentially duplicating existing page content. Per
`scoring-formula.md`'s consolidation rule, don't build a near-duplicate —
either confirm a genuinely distinct angle first or fold into the existing
page instead.

- **Cost by home size / square footage breakdown** — likely overlaps
  `poly-b-replacement-cost-calgary/`. Only build as a separate page if the
  existing cost page doesn't already segment by home size; otherwise this
  is a refresh candidate for the existing page, not a new page.
- **Poly-B pipe recalls / class-action Canada (revisited)** — overlaps
  `poly-b-lawsuit-history-canada/` directly. Skip unless a genuinely new
  angle emerges (e.g. a new recall or settlement).
- **Poly-B vs. copper corrosion comparison** — overlaps
  `poly-b-vs-pex-vs-copper/`. Skip unless reframed around a narrow
  sub-question that page doesn't answer.
- **Repipe timeline / how long it takes** — overlaps
  `poly-b-replacement-process-calgary/`; see queued item #5 — verify before
  building rather than skip outright, since the existing page may not
  cover timeline in detail.

## Notes for the next scheduled run

- Business NAP, phone number, and license/insurance details throughout the
  site are still placeholders — do not remove the placeholder notes when
  editing pages; that's a real-business-info task for the site owner, not
  the content-automation process.
- Hero images: no topic-specific photos exist yet for queued topics. Reuse
  the closest existing image in `/images/` (see file list in the repo) with
  accurate alt text rather than inventing a filename that doesn't exist —
  a broken hero image is worse than a reused one. Flag in this file if a
  topic really needs its own photo.
