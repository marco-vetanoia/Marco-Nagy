# Bundled content

`portfolio_content.json` is produced by the **Export** button in the debug-mode
admin screen. It is optional: if it is absent the app seeds from the Dart
constants under `lib/features/portfolio_content/data/seed/`.

Seeding priority on launch:

1. Local storage already has content -> use it
2. else `portfolio_content.json` exists -> seed from it
3. else -> seed from the Dart seed constants

To publish edits made in debug: edit -> Export -> save the JSON here ->
`flutter build web --release` -> deploy.
