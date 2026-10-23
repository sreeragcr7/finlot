# FinLot

FinLot is a Flutter app for exploring and managing savings pools. The current build includes onboarding, a home dashboard, pool screens, activity, and profile placeholders.

## Requirements

- Flutter SDK compatible with the Dart constraint in `pubspec.yaml`
- Android Studio or another configured Android toolchain to run on Android

## Run locally

```sh
flutter pub get
flutter run
```

To target a connected Android device, check that it appears in `flutter devices`, then run `flutter run -d <device-id>`.

## Project checks

```sh
flutter analyze
flutter test
```

The Android application ID is currently `com.example.flutter_project`; replace it with a unique ID before publishing a release.
