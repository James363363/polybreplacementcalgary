# Content Backlog — Poly-B Replacement Calgary

Tracking file for the twice-weekly SEO article production process. Read this
file at the start of every content-production run to see what's published,
what's queued, and what needs review before it's built.

Last updated: 2026-09-19

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
- Note (2026-08-28 run, morning): both WebSearch and WebFetch worked without
  issue throughout fact-checking (Alberta trade-certification rules, City of
  Calgary contractor licensing, WCB registration, and market warranty norms
  all confirmed via live sources). The GitHub connector also worked cleanly
  end to end again — two-step create/update on the new article (byte-size
  verified identical pre/post push via a local diff), single-shot updates
  on sitemap.xml and this file.
- Note (2026-08-28 run, afternoon): the user explicitly requested "publish
  all unpublished articles" in one run, a deliberate one-time deviation from
  the normal 2-per-week cadence — see Week 6 below. Before building, each
  remaining queued topic was re-verified against the two pages it might
  overlap (`poly-b-replacement-process-calgary/` and
  `poly-b-home-inspection-calgary/`, read in full) per the consolidation
  rule; two of the six queued topics turned out to already be thoroughly
  covered by existing pages and were resolved without a new page rather
  than force a near-duplicate — see the Queued topics section below for
  what happened to each item. The two-step create/update pattern and
  single-shot sitemap/backlog updates worked cleanly for all 4 new pages
  and both file updates in this run.

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

## Week 5 articles (published 2026-08-28, morning run)

| Topic | URL | Notes |
|---|---|---|
| How to choose a Poly-B replacement plumber in Calgary | `/poly-b-choosing-plumber-calgary/` | Fact-checked via WebSearch/WebFetch: plumbing is a compulsory-certification trade in Alberta (confirmed via tradesecrets.alberta.ca) — anyone doing restricted plumbing work must be a registered apprentice, certified journeyperson, or hold a recognized trade certificate; confirmed via calgary.ca that plumbing contractors need a City of Calgary business licence as a specialty trade contractor and must register as a City Qualified Trade with a journeyperson plumber to pull permits; confirmed Alberta businesses generally must register with WCB within 15 days of hiring their first employee (general rule, no specific construction-industry exemption found to cite, so the article frames this as a question to ask rather than an absolute legal mandate). Market warranty norms (materials vs. workmanship split, typical workmanship ranges, transferability) checked against multiple Calgary competitor pages rather than asserted as universal figures. Reused `hero-about.jpg` (a Calgary plumber smiling in front of his van, mountains in the background) since no dedicated photo exists. Linked to the permit-requirements, replacement-cost, and buying/selling pages from the body. |

## Week 6 articles (published 2026-08-28, afternoon run — bulk publish of remaining queue)

| Topic | URL | Notes |
|---|---|---|
| Poly-B pipe and rental/landlord obligations in Alberta | `/poly-b-landlord-rental-obligations-alberta/` | Fact-checked via WebSearch/WebFetch: Alberta's Residential Tenancies Act requires habitability (working hot/cold water, intact structure) and reasonable repair timelines (~24h for emergencies, ~7-14 days general, per RTDRS case-by-case judgment) but does not name Poly-B or any specific pipe material — confirmed no specific disclosure statute exists, so the article frames disclosure as best practice, not a legal requirement, to avoid overclaiming. Also confirmed Calgary secondary-suite legalization requires a full plumbing review against current Building Code by a licensed contractor; since Poly-B was dropped from code in 2005, framed as "very likely to surface" during that permit process rather than an absolute mandate, since no source confirmed a blanket suite-legalization plumbing-replacement rule. Folded in the secondary/legal-suite sub-angle from the 2026-08-25 research log rather than building it separately, per the consolidation rule. Reused `hero-condo.jpg` (Calgary townhouse/rental development with skyline, verified by viewing the actual image) since no landlord-specific photo exists. Linked to the permit-requirements, choosing-plumber, home-insurance, and replacement-cost pages from the body. |
| Poly-B pipe and frozen/winter pipe risk in Calgary | `/poly-b-frozen-pipes-calgary/` | Fact-checked via WebSearch/WebFetch: confirmed calgary.ca publishes seasonal frozen-pipe PSAs (general prevention: insulate exposed pipes, drip faucets during cold snaps, know main shutoff location). Could not find a source directly comparing Poly-B's freeze resistance to copper/PEX, so the article does not claim Poly-B is more prone to freezing than other materials — instead it explains the mechanism honestly (any pipe can freeze; aging Poly-B's existing chlorine-brittleness plus cold-stiffened plastic means less flex to absorb ice-expansion stress) without asserting an unverified comparative claim. Reused `hero-emergency.jpg` (plumber working under a sink with a flashlight and wrench, verified by viewing the actual image) since no freeze-specific photo exists. Linked to the warning-signs, emergency-leak-repair, and home-insurance pages from the body. |
| Can you DIY a Poly-B pipe replacement? | `/poly-b-diy-replacement-calgary/` | Built on the already-established fact (from the 2026-08-20 permit-requirements page) that homeowners may self-permit only if owner-occupied and doing the work themselves. Framed DIY as narrowly legal but practically risky — concealed work, specialized crimping tools, and insurance/resale complications if unpermitted or done incorrectly — without discouraging small, visible, easily-inspected DIY jobs. Reused `hero-pillar.jpg` (a plumber connecting PEX lines to a water heater, previously flagged in the 2026-08-25 notes as the best fit for this exact topic, verified by viewing the actual image). Linked to the permit-requirements, replacement-cost, and choosing-plumber pages from the body. |
| Poly-B vs. galvanized steel pipe | `/poly-b-vs-galvanized-steel-pipe/` | Verified real demand/competitor validation before building (per the queue note to confirm demand first): found direct competitor content combining Poly-B and galvanized replacement (theirishplumber.ca's "Replacing Poly B and Galvanized Piping"), confirming this is a real search/content pattern, not a manufactured topic. Fact-checked galvanized pipe specifics via canadianhomeinspection.com: became standard ~1940s, homes built before ~1970 most likely to have it, typical lifespan ~20 years with significant deterioration by 30-40 years, fails via internal corrosion/rust reducing water pressure and eventually pinhole leaks — a genuinely distinct failure mechanism from Poly-B's brittleness/fitting-cracking pattern, so this is disambiguation content rather than a near-duplicate of any existing page. Visual/magnetic identification details (rigid vs. flexible, magnet test, threaded vs. crimped fittings) are general, well-established plumbing knowledge. Reused `hero-lawsuit.jpg` (a close-up of a coiled Poly-B pipe's printed stamp being examined with a magnifying glass, verified by viewing the actual image) as the closest thematic match for an identification-focused article, rather than the vs-pex-vs-copper page's image, since that photo's grey coiled pipe reads as flexible plastic and would be inaccurate for a galvanized (rigid metal) comparison. Linked to the warning-signs and home-inspection pages from the body. |

## Week 7 articles (published 2026-09-19)

| Topic | URL | Notes |
|---|---|---|
| What to do when filing a Poly-B insurance claim in Calgary | `/poly-b-insurance-claim-calgary/` | Built from fresh keyword research (queue had been empty since 2026-08-28) after checking demand/competitor signals: confirmed real search/content pattern via a direct competitor page (Urban Piping's "Mastering Home Insurance Claims for Poly B Plumbing Issues", separate from their general insurance-coverage page — validating that "will this be covered" and "how do I actually file and win a claim" are genuinely distinct content types). Verified no overlap by reading `/poly-b-home-insurance-alberta/` (covers coverage/underwriting Q&A, not claims procedure) and `/poly-b-emergency-leak-repair-calgary/` (covers the first-10-minutes shutdown steps, with only one brief FAQ item on claims) in full before writing — this page is the distinct procedural layer: what to document, what to keep as evidence, what an adjuster asks for, and how a repipe's permit/invoice factors into the claim. Fact-checked via WebSearch/WebFetch against BrokerLink, Promutuel Insurance, and RBC Insurance: confirmed the standard Canadian "sudden and accidental" vs. "gradual" water damage distinction, and the standard claim-filing steps (photograph before cleanup, keep the failed part as evidence, notify insurer promptly, mitigate further damage without over-cleaning, keep all receipts). Did not claim insurers treat Poly-B claims differently as a documented policy — framed as "some adjusters may ask more questions" since no source confirmed a formal Poly-B-specific claims policy. Reused `hero-insurance.jpg` (a homeowner reviewing paperwork and a laptop at a kitchen table, verified by viewing the actual image — second use of this file, first was `/poly-b-home-insurance-alberta/`) since no claims-specific photo exists. Linked to the emergency-leak-repair, home-insurance, and replacement-cost pages from the body.

## Queued topics

The queue that was refreshed on 2026-08-25 (7 topics) was fully resolved as of
2026-08-28's bulk-publish run (four became pages, two were folded into
existing pages — see below). The queue then sat empty until this run.

**2026-09-19 run:** the queue was empty on arrival (as flagged after
2026-08-28), so this run did a fresh keyword-research pass per
`scoring-formula.md` before building anything, per the standing instruction
to get owner approval for a fresh batch rather than inventing topics
unattended — the owner approved running the research and publishing from it
in this session. Searched for real demand signals (competitor content,
People Also Ask patterns) around Poly-B + insurance, financing, and cost
angles not yet covered, and checked every candidate against all 22 published
pages plus the overlap-risk list below before committing to one:

- **Poly-B insurance claims process** — BUILT this run, see Week 7 above.
  Scored well on all four signals: real demand (a direct competitor runs a
  dedicated page on this exact angle, separate from their general coverage
  page), local-transactional/commercial intent (someone who just had a leak
  is a high-intent lead), and a genuinely distinct angle from both
  `/poly-b-home-insurance-alberta/` (covers "will this be covered," not "how
  do I file and win the claim") and `/poly-b-emergency-leak-repair-calgary/`
  (covers the first-10-minutes shutdown, not the claims process).
- **Poly-B repipe financing / payment plan options in Calgary** — QUEUED,
  next in line. A direct competitor (Urban Piping) has a dedicated page on
  financing strategies for a Poly-B project, confirming real demand for this
  angle. Considered building it this run but held back: `/poly-b-mortgage-refinance-calgary/`
  already has a "Using a Refinance to Pay for the Repipe" section covering
  HELOC/refinance as a funding option, so a new page needs to clearly focus
  on what that page doesn't cover — third-party contractor financing
  programs (installment loans, deferred-interest offers), how those compare
  to a HELOC/refinance, and what to watch for in financing terms — rather
  than re-covering the refinance angle. Before building, verify current
  Alberta/Canada consumer-financing disclosure norms (interest rates,
  deferred-interest terms) so the page doesn't overclaim on rates or terms
  the business doesn't actually offer; this needs the actual business's
  financing partner/terms confirmed with the site owner before publishing,
  since inventing specific rates or programs would be a false claim.
- **Cost by home size / square footage breakdown** — RESOLVED, no new page
  needed. Read `/poly-b-replacement-cost-calgary/` in full: it already has a
  "Typical Poly-B replacement cost by home type" table segmenting condo,
  bungalow, 2-storey, and walkout-basement homes with illustrative price
  ranges, plus a full section on what moves price up or down (fixtures,
  storeys, finished vs. unfinished basement, etc.). This satisfies the
  overlap-risk note's own condition ("only build as a separate page if the
  existing cost page doesn't already segment by home size") — moved from
  flagged overlap-risk to resolved.
- **How long does a full Poly-B repipe actually take?** — RESOLVED (carried
  over from 2026-08-28), no new page needed. Read `/poly-b-replacement-process-calgary/`
  in full: it already has a dedicated "The Short Answer First" section
  stating typical timeline (a few days to about a week), a detailed
  zone-by-zone stage-by-stage breakdown, and an FAQ item specifically on
  "How many days will my water actually be off?" A separate timeline page
  would be a near-duplicate.
- **What does a Poly-B home inspection report actually say?** — RESOLVED
  (carried over from 2026-08-28), no new page needed. Read
  `/poly-b-home-inspection-calgary/` in full: it already has a dedicated
  "What Your Inspection Report Will Actually Say" section covering the
  three common report-language forms plus FAQ coverage of the same ground.
  A separate report-language page would be a near-duplicate.

**Next scheduled run:** build the financing/payment-plans page once real
financing terms are confirmed with the site owner (see note above), or run
another keyword-research pass if that isn't ready in time.

## Flagged overlap-risk — still review before scheduling

These were identified as potentially duplicating existing page content and
were not touched in this run. Per `scoring-formula.md`'s consolidation rule,
don't build a near-duplicate — either confirm a genuinely distinct angle
first or fold into the existing page instead.

(Cost by home size / square footage breakdown was resolved 2026-09-19 —
see Queued topics above — and removed from this list.)

- **Poly-B pipe recalls / class-action Canada (revisited)** — overlaps
  `poly-b-lawsuit-history-canada/` directly. Skip unless a genuinely new
  angle emerges (e.g. a new recall or settlement).
- **Poly-B vs. copper corrosion comparison** — overlaps
  `poly-b-vs-pex-vs-copper/`. Skip unless reframed around a narrow
  sub-question that page doesn't answer.
- **Poly-B and multi-family/apartment buildings** — overlaps
  `poly-b-condo-repiping-calgary/` directly (confirmed 2026-08-25 by
  reading the full page — it already covers multi-unit buildings, board
  process, and financing in depth). Skip unless a genuinely distinct
  angle emerges (e.g. purpose-built rental apartment blocks under single
  commercial ownership, which the condo page doesn't address).

## Notes for the next scheduled run

- **One topic queued (financing/payment-plans), pending a fact-check
  blocker** — see Queued topics above. It needs the site owner to confirm
  what financing programs/terms the business actually offers before it can
  be written without inventing rates or programs. If that isn't resolved in
  time for the next scheduled run, run a fresh keyword-research pass per
  `scoring-formula.md` instead of guessing at financing terms.
- Business NAP, phone number, and license/insurance details throughout the
  site are still placeholders — do not remove the placeholder notes when
  editing pages; that's a real-business-info task for the site owner, not
  the content-automation process.
- Hero images used so far: `hero-process.jpg` (permit-requirements),
  `hero-warning-signs.jpg` (communities), `hero-insurance.jpg`
  (mortgage/refinance, and reused a 2nd time 2026-09-19 for the insurance
  claims page), `hero-about.jpg` (choosing-plumber), `hero-condo.jpg`
  (landlord/rental), `hero-emergency.jpg` (frozen pipes), `hero-pillar.jpg`
  (DIY replacement), `hero-lawsuit.jpg` (galvanized comparison, reused from
  its original lawsuit-history page). Every image in `/images/` has now
  been used at least once; future topics will need to reuse an image a
  second (or third) time (verify by viewing the actual file for an honest
  alt-text match, as done throughout this run) or a dedicated photo would
  need to be commissioned once the backlog grows further.
- Note (2026-08-21 run): outbound WebFetch calls started failing partway
  through fact-checking with `PROVENANCE_REQUIRED` (a permission gate that
  needs a user to approve, unavailable in this unattended scheduled run).
  WebSearch continued to work throughout. If a future run hits the same
  issue, lean on WebSearch results and only fetch pages that don't need
  the failing tool, and don't publish a specific factual claim that
  couldn't be independently confirmed. (Note: WebFetch worked fine again
  on the 2026-08-25 and both 2026-08-28 runs, so this issue appears
  intermittent rather than a permanent block.)
