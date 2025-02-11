# BLoC DEMO
This is a demo app to help demonstrate BLoC State management and architecture.<br>

## Architecture
The app has been divided into 3 layers:<br>
### 1.Presentaion Layer:
Contains Widgets and UI components.<br>
### 2.Data Layer: 
Contains code for interaction with external service such as a public api or to your backend to fetch, send and process data.<br>
### 3.Logic Layer: 
Contains all the buisness logic for the app, using BLoc.<br>
```
.
├── config
│   └── router.dart
├── data
│   ├── data_providers
│   │   └── math_api.dart
│   └── models
│       └── math.dart
├── logic
│   ├── api
│   │   ├── api_bloc.dart
│   │   ├── api_event.dart
│   │   └── api_state.dart
│   └── counter
│       ├── counter_bloc.dart
│       ├── counter_event.dart
│       └── counter_state.dart
├── main.dart
└── presentation
    ├── screens
    │   ├── api_screen.dart
    │   └── counter_screen.dart
    └── widgets
        └── navbar.dart

```
## Setup
### Requirements:
Flutter:Version 3.x or later
Dart SDK Version: ^3.6.0
### Install:
1. Clone into the repository
```bash
git clone https://github.com/MS-githubaccnt/BLoC-Demo.git
```
2. Get Dependencies
```bash
flutter pub get
```
3.Run the app
```bash
flutter run
```
4.To get an apk
```bash
flutter build apk --release
cd build/app/outputs/flutter-apk
```

### BLoC Explanation:
The app utilises two Blocs the Api Bloc and the Counter for the State management.<br>
For Api Bloc 3 states have been used:
1. Fact Loading : For progress indicator during loading.
2. Fact Fetched: To handle fetching of new facts.
3. Fact Error : For error handling.
<br>
For Counter Bloc only one state CounterState having a count is used.<br>