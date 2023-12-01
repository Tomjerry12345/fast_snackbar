library fast_snackbar;

import 'package:flutter/material.dart';

enum TypeFastSnackbar { success, error, warning }

Color _hexToColor(String code) {
  String hexCode = code.replaceAll('#', '');

  if (hexCode.length == 3) {
    hexCode =
        '${hexCode[0]}${hexCode[0]}${hexCode[1]}${hexCode[1]}${hexCode[2]}${hexCode[2]}';
  }

  if (hexCode.length == 6) {
    hexCode = 'FF$hexCode';
  }

  return Color(int.parse(hexCode, radix: 16));
}

extension FastSnackbar on BuildContext {
  /// [type] : String hex | TypeFastSnackbar | Color color
  /// default : TypeFastSnackbar.success
  void showFastSnackbar(String text,
      {dynamic color = TypeFastSnackbar.success}) {
    ScaffoldMessenger.of(this).removeCurrentSnackBar();

    Color? c;

    if (color is TypeFastSnackbar) {
      if (color == TypeFastSnackbar.success) {
        c = Colors.green;
      } else if (color == TypeFastSnackbar.error) {
        c = Colors.red;
      } else if (color == TypeFastSnackbar.warning) {
        c = Colors.yellow;
      }
    } else if (color is String) {
      if (color.characters.first == "#") {
        c = _hexToColor(color);
      } else {
        throw Exception("Type hexa not first #");
      }
    } else if (color is Color) {
      c = color;
    } else {
      throw Exception("Type is not support");
    }

    final snackBar = SnackBar(content: Text("$text"), backgroundColor: c);

    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
