import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainAppBar extends AppBar {
  static Widget createWordMark(double? fontSize) => Row(
    children: [
      Text('worth ', style: _getHeaderFontStyle(Colors.blueGrey, fontSize: fontSize)),
      Text('it?', style: _getHeaderFontStyle(Colors.green, fontSize: fontSize)),
    ],
  );

  static TextStyle _getHeaderFontStyle(Color color, {double? fontSize}) {
    return GoogleFonts.workSans(
        color: color, fontWeight: FontWeight.w600, fontSize: fontSize);
  }

  MainAppBar()
      : super(
            centerTitle: false,
            title: createWordMark(24),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            actions: [
              IconButton(
                padding: EdgeInsets.only(right: 10),
                icon: Stack(
                  children: [
                    Icon(
                      Icons.notifications_rounded,
                      color: Colors.blueGrey,
                    ),
                    Positioned(
                      // draw a white marble
                      top: 0,
                      right: 0,
                      child: Icon(Icons.circle, size: 12, color: Colors.white),
                    ),
                    Positioned(
                      // draw a green marble
                      top: 2,
                      right: 2,
                      child: Icon(Icons.circle, size: 8, color: Colors.green),
                    )
                  ],
                ),
                onPressed: () {},
              )
            ]);
}
