# Professional English Learning — offline edition

Version 1.1.0+2 preserves the existing Flutter UI and moves word browsing, details, creation, editing and deletion to SQLite. Startup does not initialize Firebase. Firebase dependencies and configuration files have been removed; system fonts require no downloads. Android's main manifest removes Internet and network-state permissions contributed by the app or dependencies.

The distributable seed contains 70 vocabulary examples with empty progress, sessions, settings and metadata. First launch copies it into the private app database directory. Existing local database files are not overwritten, and edits persist across restarts. Uninstalling removes local data. Existing cloud vocabulary and Firestore caches are not automatically migrated.

## Development

Use Flutter 3.35.4 / Dart 3.9.2, JDK 17, Android SDK 36 and the NDK version in android/app/build.gradle. No cloud configuration is required. The lockfile pins Dart dependencies.

```sh
flutter pub get
flutter analyze --no-fatal-infos --no-fatal-warnings
dart run tool/verify_offline.dart
flutter build apk --release
```

For cached builds, use `flutter pub get --offline` and `flutter build apk --release --no-pub`, with Gradle also configured offline. A fresh development environment may need dependency downloads; the installed application does not.

The verification command executes production SQLite queries against a disposable copy of the seed. It checks quoted unit names, parameterization, creation, editing, duplicate rollback, required fields, persistence after reopening, deletion and dependent progress cleanup.

The generated Android project currently signs release builds with its debug signing configuration. Configure private production signing before distribution and never commit signing keys or passwords. The iOS release build has been compiled for a real-device ARM64 target with Xcode 16 / iPhoneOS 18 SDK and codesigning disabled. It has not been tested on a physical iOS device. An installable IPA requires a valid signing identity and provisioning profile, or an explicitly chosen re-signing workflow; an unsigned device build is not a ready-to-install package. Web is unsupported by this SQLite implementation. No cloud administration or billing changes are performed.

---

## Original server version documentation

The existing repository documentation and original license statement are preserved below for historical context. Its Firebase instructions apply to the old server version.

📚 Professional English Learning

A lightweight, fast, and customizable vocabulary management app built using FlutterFlow + Flutter, designed for students learning Professional English (Computer Science major).

The app allows users to add, edit, view, and categorize vocabulary, powered by a simple Firebase Firestore backend.

✨ Features
🔤 Word Management

Add new vocabulary words

Edit existing entries

Delete unwanted words

View detailed definitions

🏷 Categorization

Each word can be assigned to a unit / chapter

Built-in unit list for Computer Science English textbook

Custom tags supported

📂 Firebase Integration

Realtime data updates

Safe document reference passing

Clean CRUD logic for reliable syncing

Works offline with local cache (optional)

🎨 Clean & Minimal UI

Built using FlutterFlow’s widget system

Fully responsive on Android and iOS

Simple and distraction-free design

📦 Build Outputs

Supports building for:

Android APK / AAB

iOS (IPA)

Flutter Web

🛠 Tech Stack
Technology	Description
Flutter	Cross-platform UI framework
FlutterFlow	Visual builder + auto-generated Flutter code
Firebase Firestore	Cloud NoSQL database
Dart	Main programming language
Android Studio / Xcode	Build & deployment environments
📁 Project Structure (Flutter)
lib/
├── main.dart
├── backend/
│   └── firebase/
│       └── crud functions...
├── pages/
│   ├── addWord/
│   ├── editWord/
│   ├── wordList/
│   ├── wordDetails/
│   └── settings/
└── widgets/

🚀 Getting Started
1. Clone the repo
   git clone https://github.com/yourusername/Professional-English-Learning.git
   cd Professional-English-Learning

2. Install dependencies
   flutter pub get

3. Configure Firebase

Download your google-services.json (Android)

Download your GoogleService-Info.plist (iOS)

Place them in the proper folders

4. Run the app
   flutter run

📸 Screenshots (optional)

You can upload UI screenshots here

📜 License

This project is for learning & personal use.
Feel free to fork and customize for your own study workflow.
