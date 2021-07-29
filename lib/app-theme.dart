import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorthItTheme {
  static final _mainAppTheme = ThemeData(
    // This is the theme of your application.
    //
    // Try running your application with "flutter run". You'll see the
    // application has a blue toolbar. Then, without quitting the app, try
    // changing the primarySwatch below to Colors.green and then invoke
    // "hot reload" (press "r" in the console where you ran "flutter run",
    // or simply save your changes to "hot reload" in a Flutter IDE).
    // Notice that the counter didn't reset back to zero; the application
    // is not restarted.
    primarySwatch: Colors.blueGrey,
    accentColor: Colors.green,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
    textTheme: GoogleFonts.workSansTextTheme(),
  );

  static ThemeData getMainAppTheme() => _mainAppTheme;

  static TextStyle getWordMarkTextStyle(Color color, {double? fontSize}) {
    return GoogleFonts.workSans(
        color: color, fontWeight: FontWeight.w600, fontSize: fontSize);
  }
}
