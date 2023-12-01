library fast_snackbar;

import 'package:flutter/material.dart';

enum TypeFastSnackbar { success, error, hex() }

Color _hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void showFastSnackbar(BuildContext context, text,
    {dynamic type = TypeFastSnackbar.success}) {
  if (text == null) return;

  Color? c;

  if (type == TypeFastSnackbar.success) {
    c = Colors.green;
  } else if (type == TypeFastSnackbar.error) {
    c = Colors.red;
  } else if (type.characters.first == "#") {
    c = _hexToColor(type);
  } else {
    c = type;
  }

  final snackBar = SnackBar(content: Text("$text"), backgroundColor: c);

  // scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
