import 'dart:math';

import 'package:flutter/material.dart';

class ColorManager {
  static const textColor = Color(0xFF353535);
  static const textColorDark = Color(0xFF212121);
  static const textColorLight = Color(0xFFA6A6A6);

  static Color tc1 = const Color(0xFF1C1B1F);
  static Color tc2 = const Color(0xFF49454F);

  static Color primaryLight = Color.fromARGB(255, 168, 198, 215);
  static Color primaryChatLight = Color(0xffE1F4FC); //B1E4F8
  static Color primaryChatLight2 = Color(0xffB1E4F8);
  static Color primary = const Color(0xFF0275B1);
  static Color primaryL1 = const Color(0xFF0077B5);
  static Color primaryL2 = const Color(0xFF0E6795);

  static Color secondaryLight = Color.fromARGB(255, 230, 197, 149);
  static Color secondary = const Color(0xFFED8F03);
  static Color secondaryL1 = const Color(0xFFFFB75E);
  static Color secondaryL2 = const Color(0xFFED8F03);

  static Color borderColor = const Color(0xFFeaeaea);
  static Color scaffoldBackground = const Color(0xffF6F7FA);

  static Color primaryDark = Color.fromARGB(255, 29, 101, 73);

  static Color facebook = const Color(0xFF3b5998);
  static Color linkedin = const Color(0xFF0077b5);
  static Color instagram = const Color(0xFFd62976);
  static Color twitter = const Color(0xFF1DA1F2);

  static LinearGradient shimmerGradient = const LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );

  static List<Color> templateColors = [
    const Color(0xFF98B4D4),
    const Color(0xFFC3447A),
    const Color(0xFFBC243C),
    const Color(0xFF7FCDCD),
    const Color(0xFFE15D44),
    const Color(0xFF55B4B0),
    const Color(0xFFDFCFBE),
    const Color(0xFF9B2335),
    const Color(0xFF5B5EA6),
    const Color(0xFFEFC050),
    const Color(0xFF45B8AC),
    const Color(0xFFD65076),
    const Color(0xFFDD4124),
    const Color(0xFF009B77),
    const Color(0xFFB565A7),
    const Color(0xFF955251),
  ];

  //////////////////////////////////////////////////////

  static Color primary2 = const Color(0xFF4649FF);
  static Color darkGrey = const Color(0xFF434343);
  static Color grey = const Color(0xFF8F9BB3);
  static Color midGrey = const Color(0xFFAFACC5);
  static Color midGrey2 = const Color(0xFFF2F2F2);
  static Color lightGrey = const Color(0xFFF6F6F5);
  static Color borderGrey = const Color(0xFFF4F4F4);
  static Color primaryOpacity70 = const Color(0xB3735BF2);
  static Color gold = const Color(0xFFFF8C00);
  static Color transparent = Colors.transparent;

  static Color darkPrimary = const Color(0xFFFF0036);
  static Color darkPrimary2 = const Color(0xFF1D1CE5);
  static Color error = const Color(0xFFFF0000);
  static Color grey1 = const Color(0xFF707070);
  static Color grey2 = const Color(0xFF797979);
  static Color white = const Color(0xFFFFFFFF);
  static Color black2 = const Color(0xFF202020);
  static Color black = const Color(0xFF000000);
  static Color success = const Color(0xFF006400);

  static Color gRed = const Color(0xFFDB4437);

  static MaterialColor getSwatch({required Color color}) {
    return MaterialColor(color.value, {
      50: tintColor(color, 0.9),
      100: tintColor(color, 0.8),
      200: tintColor(color, 0.6),
      300: tintColor(color, 0.4),
      400: tintColor(color, 0.2),
      500: color,
      600: shadeColor(color, 0.1),
      700: shadeColor(color, 0.2),
      800: shadeColor(color, 0.3),
      900: shadeColor(color, 0.4),
    });
  }

  static int tintValue(int value, double factor) =>
      max(0, min((value + ((255 - value) * factor)).round(), 255));

  static Color tintColor(Color color, double factor) => Color.fromRGBO(
      tintValue(color.red, factor),
      tintValue(color.green, factor),
      tintValue(color.blue, factor),
      1);

  static int shadeValue(int value, double factor) =>
      max(0, min(value - (value * factor).round(), 255));

  static Color shadeColor(Color color, double factor) => Color.fromRGBO(
      shadeValue(color.red, factor),
      shadeValue(color.green, factor),
      shadeValue(color.blue, factor),
      1);
}
