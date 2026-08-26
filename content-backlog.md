# Content Backlog — Poly-B Replacement Calgary

Tracking file for the twice-weekly SEO article production process. Read this
file at the start of every content-production run to see what's published,
what's queued, and what needs review before it's built.

Last updated: 2026-08-25

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
- Note (2026-08-25 run): WebFetch worked reliably throughout this run (no
  repeat of the 2026-08-21 `PROVENANCE_REQUIRED` failures), so fact-checking
  could use both WebSearch and WebFetch this time. The GitHub connector also
  worked cleanly end to end, including the two-step create/update on the new
  article and single-shot updates on sitemap.xml/content-backlog.md.

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

## Week 3 articles (published 2026-08-21)

| Topic | URL | Notes |
|---|---|---|
| Poly-B pipe in specific Calgary communities built 1978–1995 | `/poly-b-communities-calgary/` | Fact-checked community establishment years via Wikipedia (cross-referenced against calgary.ca, which doesn't publish founding dates on its community profile pages): Deer Ridge established 1978, Edgemont development began 1978, Ranchlands established 1977. Only these three communities were verified with a solid source before the run hit repeated `PROVENANCE_REQUIRED` fetch failures on further Wikipedia lookups (likely an approval-gate on outbound fetches with no user present to approve, since this ran unattended) — the article is explicit that its community list is illustrative, not exhaustive, and repeatedly redirects readers to confirming their own home's build year rather than relying on neighbourhood name alone, so the incomplete list doesn't create an accuracy risk. Reused `hero-warning-signs.jpg` (closest thematic match — pipe identification) since no community-specific photo exists. Linked to the warning-signs and replacement-cost pages from the body. If future runs have working outbound fetch access, consider expanding the verified community list (candidates not yet confirmed: Woodbine, Hawkwood, McKenzie Lake, Sundance, Cedarbrae). |

## Week 4 articles (published 2026-08-25)

| Topic | URL | Notes |
|---|---|---|
| Can you get a mortgage or refinance with Poly-B pipe in the home? | `/poly-b-mortgage-refinance-calgary/` | Fact-checked via WebSearch/WebFetch: no Canadian lender rule requires Poly-B removal before approving a mortgage; confirmed that Canadian mortgage lenders universally require proof of active home insurance before funding/renewing a loan (standard industry practice, multiple sources), and that Poly-B is a well-documented home-insurance underwriting risk (consistent with the site's own `/poly-b-home-insurance-alberta/` page — some insurers surcharge, exclude, or decline). The article frames the insurance requirement as the real financing chokepoint rather than asserting a direct "lenders refuse Poly-B" rule, since only one low-authority, uncited source made that direct claim. Refinance-appraisal claims (appraisers may note visible Poly-B, similar to an aging furnace/roof) are framed generally/conditionally since no specific lender policy document was found to cite. Checked for overlap with the insurance and buying/selling pages before writing — kept this page focused specifically on the lending/financing mechanism (distinct angle) and cross-linked to both. Reused `hero-insurance.jpg` (closest thematic match — a homeowner reviewing financial paperwork at a kitchen table, verified by viewing the actual image) since no mortgage-specific photo exists. Linked to the insurance, replacement-cost, and buying/selling pages from the body. |

## Keyword research log (2026-08-25)

Ran a fresh research pass per the note below about the queue running low.
Method followed `scoring-formula.md`: searched for candidate query patterns,
assessed competitor content (existing coverage = real demand; thin/no
coverage = verify demand before trusting it; direct local competitors
targeting the same query = real commercial value but higher difficulty),
and checked every candidate against all 18 already-published pages plus the
existing queue before adding anything, per the consolidation rule.

Candidates investigated and their outcome:

- **Choosing/hiring a Poly-B replacement plumber** (questions to ask,
  licensing, warranty) — ADDED. Strong validation: multiple Calgary-market
  competitors target this exact query directly (Urban Piping's "Choosing a
  Trusted Poly B Repiping Contractor," Poly B Plumbing Guys' "What to Look
  for When Hiring," Mr. Rooter, Aquality). High commercial/local-transactional
  intent — this is close-to-conversion content. Folding "what warranty
  should I get" into this page rather than building it separately, since
  Urban Piping's own dedicated warranty article covers the same searcher
  intent as their hiring guide — a standalone warranty page here would be a
  thin near-duplicate of this one. Est. score ~65-70 (high commercial value
  offsets real competitor difficulty).
- **Poly-B pipe and frozen/winter pipe risk in Calgary** — ADDED. Validated
  by two competitors running a Poly-B-specific freeze angle (Urban Piping's
  "climate conditions" piece, Aquality's "prevent Poly-B pipes from
  freezing") plus strong general local demand for "frozen pipes Calgary"
  (calgary.ca itself publishes a seasonal PSA on it). Genuinely distinct
  failure mechanism from the existing warning-signs page (physical
  freeze/rupture risk vs. chemical brittleness over time) — a seasonal,
  local-transactional angle that can also funnel to the emergency-leak-repair
  page. Est. score ~50-60.
- **Can you DIY a Poly-B replacement?** (risks, code requirements, why most
  homeowners don't) — ADDED. Validated by national competitor coverage
  (This Old House, Angi, a dedicated "Poly B Pipe Replacement: A
  Homeowner's Risk Guide" from trufinity.ca) but no Calgary-localized
  version found — a real content gap locally. Ties naturally into the
  existing permit-requirements page (unpermitted DIY concealed work is a
  code issue) without duplicating it. Est. score ~55-65.
- **Poly-B and secondary/legal basement suites** — NOT added as a separate
  topic. Found real demand for "legal secondary suite Calgary" generally,
  but no competitor content combining it with Poly-B specifically, so
  demand for that exact combination is unconfirmed. Also the same audience
  as the already-queued landlord/rental topic. Folded in as a sub-angle
  note on that queued item instead of creating a new page, per the
  consolidation rule.
- **Poly-B and multi-family/apartment buildings** — SKIPPED, confirmed
  overlap. Read the existing `/poly-b-condo-repiping-calgary/` page in
  full — it already covers multi-unit buildings in depth (shared risers,
  board process, reserve-fund/special-assessment financing, condo
  insurance, phased execution). A separate "multi-family" page would be a
  near-duplicate.
- **Poly-B and water heater connections / "how to replace Poly-B"** —
  SKIPPED. Competitor results were all generic step-by-step replacement
  guides covering the same ground as the site's existing replacement-process
  and warning-signs pages — no distinct angle found.
- **Poly-B and home staging / prep before listing** — SKIPPED, insufficient
  validated demand. Search results returned only generic home-staging
  content with zero competitor overlap with Poly-B specifically, suggesting
  this combination isn't a real search pattern. Would also overlap heavily
  with the existing buying/selling page.

## Queued topics (priority order, ready to build)

1. **How to choose a Poly-B replacement plumber in Calgary** (questions to ask, licensing/insurance to verify, what warranty coverage should look like). NEW (2026-08-25) — high commercial intent, closest to a booking decision of anything in the queue. See research log above.
2. **Poly-B pipe and rental/landlord obligations in Alberta.** Distinct audience (landlords, not owner-occupiers) — low overlap, untapped intent. Fold in a secondary/legal-suite sub-angle if it fits naturally (see research log) rather than a separate page.
3. **Poly-B pipe and frozen/winter pipe risk in Calgary.** NEW (2026-08-25) — seasonal, local-transactional, a distinct failure mechanism from the warning-signs page. See research log above.
4. **How long does a full Poly-B repipe actually take?** Timeline-focused — check overlap with replacement-process page (may already cover this; verify before building).
5. **Can you DIY a Poly-B pipe replacement?** (risks, code requirements, why most Calgary homeowners hire a licensed plumber instead). NEW (2026-08-25) — ties to the permit-requirements page. See research log above.
6. **What does a Poly-B home inspection report actually say?** (sample findings, terminology) — now largely covered by the `/poly-b-home-inspection-calgary/` page (report-language section); check for remaining gap before building as a separate page, likely fold any leftover angle into that page instead per `scoring-formula.md`'s consolidation rule.
7. **Poly-B vs. galvanized steel pipe** (some older Calgary homes have galvanized, not Poly-B — disambiguation content, informational intent, likely lower priority/search volume; verify demand before building).

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
  `poly-b-replacement-process-calgary/`; see queued item #4 — verify before
  building rather than skip outright, since the existing page may not
  cover timeline in detail.
- **Poly-B and multi-family/apartment buildings** — overlaps
  `poly-b-condo-repiping-calgary/` directly (confirmed 2026-08-25 by
  reading the full page — it already covers multi-unit buildings, board
  process, and financing in depth). Skip unless a genuinely distinct
  angle emerges (e.g. purpose-built rental apartment blocks under single
  commercial ownership, which the condo page doesn't address).

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
  permit-requirements page (2026-08-20), `hero-warning-signs.jpg` was
  reused for the communities page (2026-08-21), and `hero-insurance.jpg`
  was reused for the mortgage/refinance page (2026-08-25); several images
  are now used on multiple pages, which is fine but worth noting in case
  dedicated photos become worth commissioning once the backlog grows.
  Checked two unused images against the new queue: `hero-about.jpg` (a
  Calgary plumber smiling in front of his van, mountains in the background)
  is a strong trust/credibility fit for the "choosing a plumber" topic;
  `hero-pillar.jpg` (a plumber connecting PEX lines to a water heater) fits
  the DIY-replacement topic better than a generic reuse would.
- The queue is refreshed as of 2026-08-25 (7 unambiguous topics now, plus 5
  flagged overlap-risk items). That should cover roughly 3-4 more runs at
  the current cadence — plan another research pass once it's back down to
  2-3 unambiguous topics rather than letting it run dry again.
- Note (2026-08-21 run): outbound WebFetch calls started failing partway
  through fact-checking with `PROVENANCE_REQUIRED` (a permission gate that
  needs a user to approve, unavailable in this unattended scheduled run).
  WebSearch continued to work throughout. If a future run hits the same
  issue, lean on WebSearch results and only fetch pages that don't need
  the failing tool, and don't publish a specific factual claim that
  couldn't be independently confirmed. (Note: WebFetch worked fine again
  on the 2026-08-25 run, so this issue appears intermittent rather than
  a permanent block.)
