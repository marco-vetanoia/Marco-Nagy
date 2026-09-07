# Image assets

## Required (drop these in yourself)

- `profile.png` — the headshot used by the Hero section and the About photo card.
  Until it exists the app renders a navy "MN" monogram fallback instead, so the
  build still runs.

## Project screenshots (`projects/`)

The seeded projects reference these asset paths. Any that are missing render as a
styled placeholder inside the phone frame rather than crashing:

- `projects/flowery_store_1.png`, `projects/flowery_store_2.png`, `projects/flowery_store_3.png`
- `projects/flowery_delivery_1.png`, `projects/flowery_delivery_2.png`, `projects/flowery_delivery_3.png`
- `projects/fitness_app_1.png`, `projects/fitness_app_2.png`, `projects/fitness_app_3.png`

## Certificates

Optional. A `Certificate` with no `imageAsset` renders as a generated certificate-styled
card instead of a scan, which is the default for every seeded entry.
