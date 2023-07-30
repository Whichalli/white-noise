import 'package:flutter/material.dart';
import 'package:alli_s_application9/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get brand => BoxDecoration(
        color: appTheme.pinkA100,
      );
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.blueGray90002,
      );
  static BoxDecoration get fill4 => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.pink300,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.gray900Ce,
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: appTheme.greenA400,
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.blueGray900,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16,
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
