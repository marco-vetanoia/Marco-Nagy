---
name: flutter-portfolio-app
description: Build or modify Marco Nagy's Flutter portfolio web/mobile app — a self-contained showcase app (no backend) with a phone-mockup project showcase, a separate pricing screen, and debug-only content management (add/edit/delete Projects, Certificates, Work History, Service Pricing) that becomes fully read-only in release builds. Use this whenever the user asks to build, extend, or fix screens/features in this specific portfolio project — home/about, projects showcase, certificates, experience timeline, pricing, or the debug-mode admin forms. This skill defines the app's domain rules; for HOW to write the Flutter code (Cubit/MVI, freezed, DI, theming, screenutil, localization), also follow the flutter-ui / flutter-dotnet-fullstack skill conventions already established for this user — do not invent different patterns here.
---

# Marco's Flutter Portfolio App — Domain Rules

This is a single self-contained Flutter app (mobile + web, one codebase) acting as Marco Nagy's personal portfolio. It has **no backend** — all content is stored locally and seeded from his CV. Follow the user's existing Flutter conventions (Clean Architecture, feature-first, MVI-style Cubit, `freezed`, GetIt/Injectable, `flutter_screenutil`, `ThemeExtension` theming, `ar.json`/`en.json` localization) for *how* to build each feature. This skill only encodes what's specific to *this* app.

## 1. Core rule: Debug vs. Release content management

The app has exactly **one build**, gated at runtime by Flutter's built-in `kDebugMode` / `kReleaseMode` constants (from `package:flutter/foundation.dart`) — **not** a separate flavor or environment file.

- **Debug mode** (`kDebugMode == true`): every content section (Projects, Certificates, Work History, Service Pricing) shows admin affordances — a floating "+" add button, edit/delete icons on each item — that open add/edit forms and write back to local storage.
- **Release mode** (`kReleaseMode == true`): the exact same screens render, but every admin affordance is hidden/removed entirely. No add/edit/delete UI, no forms reachable, read-only rendering of whatever is in local storage.
- Implementation: wrap admin widgets in a single shared `AdminGate` widget (`if (kDebugMode) child`) rather than sprinkling `kDebugMode` checks ad hoc across features — one place to reason about, testable, and impossible to accidentally ship an add button in release.
- Local storage layer must work identically in both modes — debug mode's edits persist to the same store release mode reads from, so content authored locally in debug and then built for release shows correctly.

## 2. Content scope — personal projects only

The showcase excludes **Work Projects** (GARAS ERP, Royal Tents — built under an employer, no public repo/screens to show freely). Only **Personal Projects** appear in the interactive project showcase:

- Flowery Store (e-commerce: auth, browsing, cart, real-time tracking, payments, delivery notifications)
- Flowery Delivery (real-time delivery tracking: live maps, driver navigation, automated ID/license driver registration)
- Fitness App (workout plans, instructional videos, meal guides, Gemini-powered AI chatbot, progress tracking)

Work History (the Vetanoia experience entry, 03/2022–present) is a **separate** entity/section — a timeline of roles/companies, not tied to the excluded work projects. It stays in scope and is admin-editable like everything else.

## 3. Data entities (local storage, `freezed` models)

| Entity | Fields | Notes |
|---|---|---|
| `PersonalProject` | id, title, description, features (list), coverImageAsset, screenshots (list of asset/path refs), category/icon, order | Powers the phone-mockup showcase |
| `Certificate` | id, title, provider, year, location | From CV "Courses" + Education |
| `WorkHistoryEntry` | id, company, role, startDate, endDate (nullable = "present"), location, bullets (list) | Vetanoia entry seeded by default |
| `PricingPackage` | id, name, basePrice, timelineLabel, description | The 3 base packages (MVP / Medium / Advanced) |
| `PricingAddOn` | id, name, unitPrice, unitTimeDays, hasCounter (bool), category | The add-on feature list (auth, notifications, maps, etc.) |

All entities: `freezed` + `json_serializable`, stored as JSON via `shared_preferences` (consistent with the user's existing stack — no new local-storage library). Seed default data (from the CV + the pricing table already agreed with the user) on first launch if storage is empty.

Every content field the visitor reads has an English and Arabic variant (`title`/`titleAr`, `description`/`descriptionAr`, etc. — same bilingual pattern as the user's `.NET` DTOs' `Name`/`ArName`), so admin forms in debug mode capture both languages per item.

## 4. Screens & navigation — structurally cloned from davidcobbina.com

This app's **layout, section structure, and interaction patterns are a direct structural clone of davidcobbina.com** (a live Flutter-web portfolio), verified by inspecting the real site page by page. Colors are **not** cloned — the site is light-themed; this app uses a navy-blue-gradient + white palette instead (see §6) — but every layout pattern below is intentional and should be replicated 1:1, just re-skinned.

**Global chrome (present on every page):**
- Top nav bar: bold monogram logo top-left ("MN" instead of "DC"), horizontal nav links center/right (Home, About, Experience, Projects, Certificates, Pricing, Contact), and an outlined pill/rect "RESUME" button top-right. Confirmed on David's site: this button opens the CV **PDF directly in a new tab** (a static asset link, not an in-app viewer) — replicate that (`url_launcher` to a bundled/hosted PDF asset).
- Every non-hero page opens with a **section-divider header**: a large circular badge made of a wavy-line texture ring, the section name centered inside in bold display type, and a small down-chevron below inviting scroll. A vertical rotated section label (e.g. "EXPERIENCE") sits along the far-left edge for the rest of that page's scroll — this is David's page-identity anchor, keep it.
- Every page ends with the **same site-wide footer band** (confirmed by scrolling to the bottom on multiple pages — this is one shared footer, not a per-page CTA): a large bold headline ("Let's work together." → Marco equivalent), a one-line availability statement below it ("I'm available for Consultancy & Freelancing." → adapt to Marco's availability), a pill CTA button ("SAY HELLO →"), a decorative diagonal-hatched circle graphic, a row of **social icons** (David has 5: GitHub, LinkedIn, Twitter, Instagram, Telegram — Marco only needs GitHub + LinkedIn, don't pad with unused ones), and a small closing credit line ("© <year> Built by Marco Nagy" + a "Built with Flutter 💙" style line). Confirmed: each social icon opens its profile URL in a **new browser tab** (external `url_launcher`, `target=_blank` equivalent) — nav links (Home/About/etc.) stay in-app.

**Home / Hero** — "Hi, I'm Marco. Flutter Developer." as the big bold headline (name/role on their own lines like David's), a subtitle line of role tags separated by "/" (e.g. "Flutter Developer / Mobile Engineer / Clean Architecture"), a large circular decorative shape behind a cutout-style photo of Marco (use the provided headshot; if a full cutout isn't feasible, keep the circular badge behind the rounded photo instead), small floating tech-stack icon badges orbiting the photo (Flutter, Firebase, Bloc, etc. icons), a pill CTA button ("SEE MY WORK →") linking to Projects, social links (GitHub/LinkedIn) bottom-left, and a vertical "SCROLL DOWN" label on the right edge.

**About** — two-column layout: left side has large, statement-style sentences (bigger/lighter font weight, like David's "I specialize in...I also have a strong passion for...") built from Marco's summary; right side has a rounded-square photo card with a textured/colored backdrop. Skills (grouped chips, from the CV Skills section) render below this as a secondary block.

**Experience** — two-column timeline exactly like David's: left column per entry shows an index (`/01`) and the date range in small caps; right column shows the company name (bold), role/title below it, then a bulleted list of achievement lines (small triangle "▷" markers, not standard bullets). Seeded from the Vetanoia entry; admin-editable in debug mode, new entries append with the next index.

**Projects (Interactive Showcase)** — **numbered list rows**, not a card grid: each personal project is a full-width row with a thin horizontal divider that visually extends on hover/focus, a two-digit index (`01`, `02`, `03`), the project name in large bold type, a small caps category tag underneath (e.g. "E-Commerce.", "Delivery / Tracking.", "Fitness."), and a "VIEW PROJECT →" pill button right-aligned. On hover/tap, a colored background block (use a distinct accent per project) slides in behind the row with a rotated/overlapping screenshot preview, echoing David's Works section (confirmed live: David has 11 rows total in this pattern). This *replaces* the earlier phone-frame-only concept — keep a phone-frame mockup, but reached by tapping "VIEW PROJECT" into a detail view (internal, since Marco's are real apps, not external Dribbble-style shots like David's), rather than as the row itself.

**Certificates — corrected, confirmed live, do NOT use the list-row pattern here:** David's Certifications page is a **two-column masonry-style grid of the actual certificate images/cards** (real certificate scans and badge cards — e.g. a university degree scan, a Google Developers badge card with certificate #/issue/valid-through dates, Udacity Nanodegree completion certificates), not a text list. Replicate that: each `Certificate` renders as an image card (the certificate itself, or a generated card with title/provider/date styled to look like one if no scan image exists) laid out in a responsive 2-column grid, not reusing the Projects list-row widget.

**Pricing** — still its own screen, reached via the nav / a CTA — not inline on Home. Keep the previously specified package selector + add-on checkboxes/counters + live total; frame it with the same section-divider header pattern as the other pages ("Pricing" in the wavy-ring badge) for visual consistency with the rest of the site.

**Contact** — "Get in touch." as a large bold headline, one short inviting sentence below it, then a stack of **underline-only** text fields (Name, Email, Subject, Message) — no boxes, just a bottom border per field, matching David's minimal form exactly. Submit action + direct email/LinkedIn/GitHub links below the form.

## 5. Localization

Full bilingual Arabic/English support is mandatory, not a placeholder — `AppLocalizations` (`LangKeys` + `context.translate()`) for every static UI string, `AppCubit`-driven language switching with a nav-level toggle, persisted the same way as theme mode, and RTL-aware layout when Arabic is active. This applies from the first build, not as a later pass.

## 6. Visual direction

**Palette: navy blue gradients + white** (supersedes the earlier plain "Dark" choice). Backgrounds use a navy blue gradient (deep navy → a lighter/brighter blue, e.g. top-left to bottom-right or as a subtle radial behind hero/section-divider circles) rather than a flat charcoal; body and headline text is white/off-white throughout, matching David's black-on-light contrast but inverted onto navy. Card surfaces (project rows, certificate grid cards, pricing cards) sit on a slightly lighter or more saturated navy panel than the page background so they read as distinct surfaces. Keep one accent color reserved for interactive/CTA moments only — a bright accent (electric blue, cyan, or gold) that stands out against navy — used sparingly for the "SEE MY WORK"/"SAY HELLO"/pricing-total CTAs, the wavy-ring section badges' outline, hover-reveal project blocks, and admin affordances in debug mode, so they're visually distinct from real content. Layout/structure is unchanged from the davidcobbina.com clone in §4 — only the palette changes.

## 7. Non-negotiables inherited from the user's Flutter standard

Everything in the flutter-ui / flutter-dotnet-fullstack skill still applies unchanged: one adaptive responsive screen per feature (mobile + web), one widget class per file under `view/widgets/`, no raw colors/strings/pixel sizes, `freezed` on every model, Cubit orchestration-only, `dart fix --apply` → `flutter analyze` → `flutter test` before calling anything done.
