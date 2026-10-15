import 'package:flutter/material.dart';

/// Keeps the generated typography API while using bundled platform fonts.
/// No font downloads or first-launch font cache are required.
class GoogleFonts {
  static TextStyle inter({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
  }) =>
      TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          height: height);

  static TextStyle interTight({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? height,
  }) =>
      inter(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
          height: height);

  static TextStyle getFont(
    String family, {
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) =>
      inter(fontWeight: fontWeight, fontStyle: fontStyle);
}
