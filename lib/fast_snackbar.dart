library fast_snackbar;

import 'package:flutter/material.dart';

Color _hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

void showFastSnackbar(text, {dynamic color = "s"}) {
  if (text == null) return;

  Color? c;

  if (color == "s") {
    c = Colors.green;
  } else if (color == "e") {
    c = Colors.red;
  } else if (color.characters.first == "#") {
    c = _hexToColor(color);
  } else {
    c = color;
  }

  final snackBar = SnackBar(content: Text("$text"), backgroundColor: c);

  scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
}
