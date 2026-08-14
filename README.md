# Poly-B Replacement Calgary — Site Build

Static HTML/CSS site (no build step, no framework) for **www.polybreplacementcalgary.com**.

## Structure

- `index.html` — pillar/homepage
- `poly-b-warning-signs-calgary/`, `poly-b-replacement-cost-calgary/`, `poly-b-home-insurance-alberta/`, `poly-b-vs-pex-vs-copper/`, `poly-b-home-buying-selling-calgary/`, `poly-b-emergency-leak-repair-calgary/`, `poly-b-replacement-process-calgary/`, `poly-b-condo-repiping-calgary/`, `poly-b-lawsuit-history-canada/` — cluster/guide pages
- `about/`, `contact/` — supporting pages
- `styles.css` — shared stylesheet
- `sitemap.xml`, `robots.txt` — SEO/crawl files
- `images/` — hero imagery (see below — **run the download script first**)

## Before going live — do these first

1. **Download the hero images.** Run `bash images/download-images.sh` once from a machine with normal internet access. The build environment that generated this site couldn't reach the image CDN directly, so the HTML already points at `/images/hero-*.jpg` but those files don't exist on disk yet — this script fetches them into place with the right filenames. The images are AI-generated (Higgsfield) — review each one before publishing, and re-generate/replace any you're not happy with.
2. **Replace every placeholder.** Search the codebase for `[LICENSE / INSURANCE INFO`, `[ADD REAL REVIEWS HERE`, `[FOUNDER/OWNER NAME`, `[SEARCH-CONSOLE-VERIFICATION-CODE]`, `(403) 555-0100`, and `Poly-B Replacement Calgary` (as a business name) — swap in your real license/insurance details, real reviews, real founder bio, a real phone number, and confirm the trade name.
3. **Search Console.** Verify the domain in Google Search Console (there's a placeholder meta tag in every page's `<head>` — replace `[SEARCH-CONSOLE-VERIFICATION-CODE]` with your real verification code, or use the DNS verification method instead), then submit `sitemap.xml`.
4. **Contact form.** The form on `/contact/` currently submits via a `mailto:` stopgap (see the HTML comment above the form). Wire it up to a real form handler (Formspree, Netlify Forms, a CRM webhook, etc.) before launch so submissions are reliable and trackable.
5. **HTTPS.** Confirm your hosting provider issues an SSL certificate for the domain (required — flagged in the E-E-A-T audit).

## Analytics

A live GA4 property was created for this site: **Poly-B Replacement Calgary**, Measurement ID `G-F68SJ3Z3KC`, already embedded in every page's `<head>`. No further setup needed there.

## Hosting

Any static host works (GitHub Pages, Netlify, Vercel, Cloudflare Pages, or traditional hosting) — just deploy everything in this repo to the web root.
