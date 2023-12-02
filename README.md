<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Description
fast_snackbar: Simplifies snack bar presentation in Flutter. The FastSnackbar extension on BuildContext enables displaying snack bars without explicit BuildContext. Key features include displaying snack bars in varied colors like green (success), red (error), yellow (warning), as well as support for customizable hexadecimal color codes and Colors widget to match user preferences.

## Features

In your pubspec.yaml
```dart
dependencies:
  fast_snackbar: ^latest-version
```

## Usage

```dart
ElevatedButton(
 child: Text('succes snackbar'),
 onPressed: () {
   // You can use TypeFastSnackbar.success | TypeFastSnackbar.error | TypeFastSnackbar.warning  
   context.showFastSnackbar("sukses", color: TypeFastSnackbar.success);
 },
),
```

Or

```dart
ElevatedButton(
 child: Text('show snackbar'),
 onPressed: () {
    // You can use Colors widget
   context.showFastSnackbar("sukses", color: Colors.red);
 },
),
```

Or

```dart
ElevatedButton(
 child: Text('show snackbar'),
 onPressed: () {
    // You can use Colors hexadesimal
   context.showFastSnackbar("sukses", color: "#000");
 },
),
```
