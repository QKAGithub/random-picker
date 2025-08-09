
# Random Picker (Flutter)

A starter Flutter app with multiple randomizer categories. Includes Liquid Glass-like UI, Riverpod, mock data, Firebase/Maps/Ads hooks.

## Quick Start

```bash
flutter pub get
flutter run
```

## Web Demo (GitHub Pages – Auto)

1. Create a new **public GitHub repo** and push this folder.
2. Ensure default branch is `main`.
3. GitHub Actions will build and publish to `gh-pages` automatically.
4. Visit: `https://<your-username>.github.io/<your-repo>/` (after the action finishes).

> You can customize the base URL in `.github/workflows/deploy-gh-pages.yml` via `--base-href` if your repo name changes.

## Firebase Hosting (Alternative)

```bash
npm i -g firebase-tools
firebase login
firebase init hosting  # choose 'build/web' as public directory (or use included firebase.json)
flutter build web --release
firebase deploy
```

## Notes
- Google Maps needs API key (AndroidManifest & AppDelegate).
- Ads IDs are test by default; replace before production.
- Some features are no-ops on web (e.g., mobile ads). The app still runs.
