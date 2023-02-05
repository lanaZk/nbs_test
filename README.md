# NBS_Test

A new Flutter project.

# Generate
flutter packages pub run build_runner build --delete-conflicting-outputs
flutter pub run build_runner watch --delete-conflicting-outputs

# assets generate
fluttergen -c pubspec.yaml

#launcher icon
flutter pub run flutter_launcher_icons:main


# assets generate
fluttergen -c pubspec.yaml


# Easy Localization

flutter pub run easy_localization:generate --source-dir ./assets/lang
flutter pub run easy_localization:generate --source-dir ./assets/lang -f keys -o locale_keys.g.dart

 