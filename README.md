# Notes App 🗒️

**Notes App** is a Flutter-based mobile application that lets users create, edit, delete, and organize notes with efficient local storage. Perfect for demonstrating clean UI design, state management, and data persistence in Flutter.

## ✨ Features

- Create, edit, and delete notes seamlessly.
- Notes persist locally (e.g., Hive / SQLite – customize based on your implementation).
- Clean, responsive user interface.
- Swipe-to-delete functionality in the notes list.
- (Optional) Search or categorize your notes easily.

## 🛠 Requirements

- Flutter SDK (version 2+)
- Dart SDK
- [Hive](https://pub.dev/packages/hive) or [SQLite](https://pub.dev/packages/sqflite) (adjust based on your choice)
- For Hive:
  ```yaml
  hive: ^2.x
  hive_flutter: ^1.x
  hive_generator: ^1.x
  build_runner: ^2.x
