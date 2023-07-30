import 'dart:ui';
import 'package:alli_s_application9/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBluegray900 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray900,
      );
  static ButtonStyle get fillBluegray90002 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blueGray90002,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            26,
          ),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
