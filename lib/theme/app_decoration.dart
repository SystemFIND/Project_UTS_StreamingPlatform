import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  static BoxDecoration get bg => BoxDecoration(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );

  static BoxDecoration get cardBg => BoxDecoration(
        color: appTheme.gray900,
      );
  static BoxDecoration get outlineOnError => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get searchBg => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get style => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 4.39.h,
        ),
      );
  static BoxDecoration get whiteCardbg => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius get circleBorder92 => BorderRadius.circular(
        92.h,
      );
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder44 => BorderRadius.circular(
        44.h,
      );
}
