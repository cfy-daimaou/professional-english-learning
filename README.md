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
