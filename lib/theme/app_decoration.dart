import 'package:flutter/material.dart';
import 'package:task/core/app_export.dart';

class AppDecoration {
  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black900.withOpacity(0.08),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: appTheme.black900.withOpacity(0.08),
          width: 1.h,
        ),
      );

  // Primary decorations
  static BoxDecoration get primary => BoxDecoration(
        color: theme.colorScheme.primary,
      );

  // Secondary decorations
  static BoxDecoration get secondary => BoxDecoration(
        color: appTheme.orange200,
      );

  // Tertiary decorations
  static BoxDecoration get tertiary => BoxDecoration(
        color: appTheme.green500,
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder49 => BorderRadius.circular(
        49.h,
      );
  static BorderRadius get roundedBorder52 => BorderRadius.circular(
        52.h,
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
