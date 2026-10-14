# WhatsApp Clone (Flutter)

A UI-focused WhatsApp clone built with Flutter.  
This project recreates the core WhatsApp navigation and screen layouts such as Communities, Chats, Status, Calls, chat details, and contact info screens.

## Overview

This repository is a multi-platform Flutter application with support scaffolding for:

- Android
- iOS
- Web
- Windows
- Linux
- macOS

The current implementation is primarily a **frontend prototype** using static/mock data and network image URLs.

## Features

- Tab-based home experience with:
  - Communities
  - Chats
  - Status
  - Calls
- WhatsApp-like `SliverAppBar` with contextual actions.
- Chat list UI with archive row and contact items.
- Chat conversation screen:
  - message bubbles
  - timestamp rendering
  - seen-state icon rendering
  - message input UI and quick actions
- Contact/User details screen:
  - media preview section
  - notification and privacy options
  - common groups section
- Status and Calls mock screens with WhatsApp-style layout.

## Tech Stack

- **Flutter** (Material UI)
- **Dart** (SDK constraint: `>=3.0.6 <4.0.0`)
- Packages:
  - `flutter_svg`
  - `cupertino_icons`

## Project Structure

```text
lib/
  main.dart                  # App entry, tab navigation, top-level UI scaffold
  models/
    group.dart               # Group model
    media.dart               # Media model
    message.dart             # Chat message model
  screens/
    chat_screen.dart         # Conversation UI
    user_screen.dart         # Contact/group detail UI
    media_screen.dart        # Placeholder
  widgets/
    group_widget.dart        # Communities tab
    chat_widget.dart         # Chats tab
    status_widget.dart       # Status tab
    call_widget.dart         # Calls tab
```

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Dart (included with Flutter)
- Android Studio / VS Code
- A connected device or emulator/simulator

### Installation

```bash
git clone https://github.com/20sw084/whatsapp-clone.git
cd whatsapp-clone
flutter pub get
```

### Run the App

```bash
flutter run
```

Examples:

```bash
# Run on Chrome
flutter run -d chrome

# Run on Android emulator/device
flutter run -d android
```

## Build

```bash
# Android APK
flutter build apk

# iOS (macOS only)
flutter build ios

# Web
flutter build web
```

## Testing & Analysis

```bash
# Static analysis
flutter analyze

# Tests
flutter test
```

> Note: the default generated widget test may require updates to match the current UI structure.

## Current Limitations

- Static/mock data is hardcoded in UI files.
- No backend or real-time messaging integration yet.
- No local persistence/authentication.
- Some controls are presentational (`onPressed: null`) and non-functional.

## Roadmap Ideas

- Add Firebase/Auth integration.
- Replace mock data with backend models/services.
- Add state management (Provider, Riverpod, or BLoC).
- Improve responsiveness and theming (light/dark parity).
- Add robust widget/integration tests.

## Contributing

Contributions are welcome. Feel free to fork the repo and open a pull request with improvements.

## License

No license file is currently defined in this repository.
