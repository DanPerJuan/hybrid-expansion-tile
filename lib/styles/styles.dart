import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  /// PRIMARY FONT FAMILY
  static String primaryFont = 'Lato';
  static String secondaryFont = 'Montserrat';

  /// COLORS
  static const Color black = Color(0xFF0A0A1F);
  static const Color white = Color(0xFFFFFFFF);
  static const Color grayLight = Color(0xFFF1F1F4);
  static const Color grayMid = Color(0xFFD5D5DC);
  static const Color gray4 = Color(0xFFBDBDBD);
  static const Color gray5 = Color(0xFFE0E0E0);
  static const Color gray6 = Color(0xFFF2F2F2);
  static const Color gray300 = Color(0xFFD2D5DA);
  static const Color therciary = Color(0xFF4D4D57);
  static const Color vibrantTertiary = Color(0xFF7F7F7F);
  static const Color red = Color(0xFFEB5757);
  static const Color error = Color(0xFFFF0000);
  static const Color green = Color(0xFF219653);

  static const Color activated = Color(0xFF27AE60);
  static const Color deactivated = Color(0xFFF1F1F4);

  static const Color warningLight = Color(0xFFFBF5E7);
  static const Color warning = Color(0xFFFEC601);
  static const Color warningDark = Color(0xFFD09A0E);

  /// FONT SIZES
  static double get fontSizeH1 => 96.0;
  static double get fontSizeH2 => 60.0;
  static double get fontSizeH3 => 48.0;
  static double get fontSizeH4 => 34.0;
  static double get fontSizeH5 => 24.0;
  static double get fontSizeH6 => 20.0;
  static double get fontSizeH7 => 18.0;
  static double get fontSizesSubtitle => 18.0;
  static double get fontSizesBody => 16.0;
  static double get fontSizesButton => 18.0;
  static double get fontSizesCaption => 16.0;
  static double get fontSizesOverline => 10.0;
  static double get fontSizesIcon => 24.0;

  /// TEXTSTYLES
  /// AppBar
  static TextStyle get appBar => GoogleFonts.getFont(
    primaryFont,
    color: black,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  /// Primary title
  static TextStyle get primaryTitle => GoogleFonts.getFont(
    primaryFont,
    color: black,
    fontSize: 34,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  /// Secondary title
  static TextStyle get secondaryTitle => GoogleFonts.getFont(
    secondaryFont,
    color: white,
    fontSize: 34,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  /// Footer
  static TextStyle get footer => GoogleFonts.getFont(
    primaryFont,
    color: white,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  /// Tittle CustomTile
  static TextStyle get titleTile => GoogleFonts.getFont(
    primaryFont,
    color: black,
    fontSize: fontSizeH6,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  /// Tittle CustomTile
  static TextStyle get subtitleTile => GoogleFonts.getFont(
    primaryFont,
    color: therciary,
    fontSize: fontSizesSubtitle,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  /// Caption CustomTile
  static TextStyle get caption => GoogleFonts.getFont(
    primaryFont,
    color: therciary,
    fontSize: fontSizesCaption,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  /// OutlinedBall CustomTile
  static TextStyle get outlinedBall => GoogleFonts.getFont(
    primaryFont,
    color: black,
    fontSize: fontSizeH7,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  /// FilledBall CustomTile
  static TextStyle get filledBall => GoogleFonts.getFont(
    primaryFont,
    color: white,
    fontSize: fontSizeH6,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
}
