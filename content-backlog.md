# Content Backlog — Poly-B Replacement Calgary

Tracking file for the twice-weekly SEO article production process. Read this
file at the start of every content-production run to see what's published,
what's queued, and what needs review before it's built.

Last updated: 2026-08-20

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
- Note (2026-08-20 run): the Zapier GitHub connector intermittently returns
  "insufficient tasks on account" (a Zapier plan task-quota issue, not an
  auth problem). When this happens, reads still work via the public repo's
  raw.githubusercontent.com URLs, so drafting/fact-checking can continue
  while blocked — only the actual push has to wait for quota to free up.

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
| Poly-B and home inspections — what inspectors actually flag | `/poly-b-home-inspection-calgary/` | Fact-checked: Alberta has required home inspectors to hold a provincial licence since 2011 under the Consumer Protection Act's Home Inspection Business Regulation (confirmed via alberta.ca and NACHI Alberta chapter). Content sticks to general, verifiable claims about inspection scope (visual/non-invasive, standard material identification) rather than quoting specific CAHPI Standards of Practice wording, since that source PDF wasn't fetchable. Checked for overlap with the existing insurance and buying/selling pages before writing — kept this page focused on the inspection process and report itself (a distinct angle) rather than repeating their financial-consequence/negotiation framing, and linked to both from the body. |

## Week 2 articles (published 2026-08-20)

| Topic | URL | Notes |
|---|---|---|
| Does a Poly-B repipe need a City of Calgary permit? | `/poly-b-permit-requirements-calgary/` | Fact-checked against calgary.ca and a plumbing-permit reference: yes, a permit is required for replacing concealed water supply lines (bylaw treats it as "altering the plumbing system"); homeowner permit fee is $112 + 4% Safety Codes Council fee (~$116.50); rough-in and final inspections required; homeowners may self-permit only if owner-occupied and doing the work themselves; unpermitted concealed work requires a licensed contractor to resolve retroactively. Reused `hero-process.jpg` (closest thematic match — permits/inspections/process) since no permit-specific photo exists. Linked to the cost and process pages from the body. |

## Queued topics (priority order, ready to build)

1. **Poly-B pipe in specific Calgary communities built 1978–1995** (e.g., older established neighbourhoods) — strong local-intent angle, low overlap.
2. **Can you get a mortgage or refinance with Poly-B pipe in the home?** Financial-consequence angle, distinct from the insurance page's focus.
3. **How long does a full Poly-B repipe actually take?** Timeline-focused — check overlap with replacement-process page (may already cover this; verify before building).
4. **Poly-B pipe and rental/landlord obligations in Alberta.** Distinct audience (landlords, not owner-occupiers) — low overlap, untapped intent.
5. **What does a Poly-B home inspection report actually say?** (sample findings, terminology) — now largely covered by the `/poly-b-home-inspection-calgary/` page (report-language section); check for remaining gap before building as a separate page, likely fold any leftover angle into that page instead per `scoring-formula.md`'s consolidation rule.
6. **Poly-B vs. galvanized steel pipe** (some older Calgary homes have galvanized, not Poly-B — disambiguation content, informational intent, likely lower priority/search volume; verify demand before building).

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
  `poly-b-replacement-process-calgary/`; see queued item #3 — verify before
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
  topic really needs its own photo. `hero-process.jpg` was reused for the
  new permit-requirements page (2026-08-20); it's now been used for both
  the replacement-process page and this one, which is fine but worth noting
  in case a dedicated photo becomes worth commissioning once the backlog
  grows.
- Only 6 queued topics remain, and all 4 flagged overlap-risk items still
  need review before they can be scheduled. When the queued list gets down
  to a handful of unambiguous topics (or runs dry), the next run should
  stop and flag it for a fresh batch of keyword research rather than
  inventing new topics unattended, per the process note above.
