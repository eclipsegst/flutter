# shared_flutter_module

A new flutter module project.

## Getting Started

For help getting started with Flutter, view our online
[documentation](https://flutter.dev/).

For instructions integrating Flutter modules to your existing applications,
see the [add-to-app documentation](https://flutter.dev/docs/development/add-to-app).

## iOS workflow

Step 1: Update main.dart

Step 2: Build ios-framework
```bash
flutter build ios-framework --xcframework --no-universal --output=../ios-framework
```
This will build ios-framework with latest changes, the output is `../ios-framework` folder.

Step 3: Build iOS Sample app