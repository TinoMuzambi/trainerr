# Trainerr

A Flutter prototype for browsing Cape Town commuter-rail schedules. It consumes the companion [`TrainerrApi`](https://github.com/TinoMuzambi/TrainerrApi) service and presents routes and departure times in a mobile interface.

## Status

This repository is a preserved 2022 prototype. Schedule browsing is implemented; the original live tracking and upcoming-train screens were only placeholders and are no longer presented as working features.

The project targets the Flutter 2.8 / Dart 2 generation and its mobile build configuration is no longer suitable for current app-store submission. Archive this repository after this maintenance change unless a deliberate Flutter 3 migration is planned. A real relaunch would require regenerated Android and iOS runners, current SDK constraints, accessibility review, tests, and confirmation that the timetable source is authorised and reliable.

## Run the historical build

Use Flutter 2.8.x, then run:

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

The app requires network access to `https://trainerr-api.vercel.app`. Requests time out after ten seconds and display an unavailable state when the API cannot be reached.

## Privacy

The prototype stores no account, location, or analytics data. Route requests are sent to the companion API. Do not add device location tracking without an explicit permission and retention design.
