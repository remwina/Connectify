# Connectify

A Flutter mobile application that fetches and displays user contact information from a public REST API. Built as part of the **API Integration and Testing Activity** for the course *Application Development and Emerging Technologies*.

---

## About the App

Connectify connects to the [JSONPlaceholder Users API](https://jsonplaceholder.typicode.com/users) and displays a list of user profiles in a clean, colorful card-based interface. Each card shows the user's name, username, email address, and phone number.

The app demonstrates a complete API request-response flow including loading, success, empty, and error states.

---

## Screenshots

| Loading | Success | Error |
|---|---|---|
| ![Loading](Connectify/screenshots/loading.png) | ![Success](Connectify/screenshots/success.png) | ![Error](Connectify/screenshots/error.png) |

---

## Features

- Fetches real data from a public REST API using the `http` package
- Displays users in a scrollable list of gradient cards
- Shows a loading spinner while data is being fetched
- Shows a friendly error screen if the request fails
- Shows an empty state if no data is returned
- Pull-to-refresh and AppBar refresh button support
- Colorful gradient avatars per user

---

## API Used

| Detail | Value |
|---|---|
| API Name | JSONPlaceholder Users API |
| Endpoint | `https://jsonplaceholder.typicode.com/users` |
| Method | GET |
| Response Type | JSON Array |

---

## Project Structure

```
Connectify/
├── lib/
│   ├── main.dart                  # App entry point and theme
│   ├── models/
│   │   └── user_model.dart        # Converts JSON into a Dart object
│   ├── services/
│   │   └── api_service.dart       # Handles HTTP GET and JSON decoding
│   └── screens/
│       └── users_screen.dart      # Main screen with all four UI states
└── test/
    ├── user_model_test.dart       # Unit tests for model and validation
    └── widget_test.dart           # Smoke test for app launch
```

---

## Getting Started

### Requirements
- Flutter SDK 3.x
- Android emulator or physical Android device
- Internet connection

### Run the app
```bash
cd Connectify
flutter pub get
flutter run
```

### Run unit tests
```bash
cd Connectify
flutter test
```

---

## Test Results

```
00:08 +8: All tests passed!
```

8 tests covering model conversion, field validation, empty list checking, and app launch.

---

## Dependencies

| Package | Version | Purpose |
|---|---|---|
| `http` | ^1.6.0 | Sending HTTP GET requests to the API |
| `flutter_test` | SDK | Unit and widget testing |

---

## Activity Info

| Item | Detail |
|---|---|
| Course | Application Development and Emerging Technologies |
| Activity | API Integration and Testing |
| API | JSONPlaceholder Users API |
| Flutter Version | 3.44.2 |
