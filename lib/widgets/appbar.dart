import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:worth_it_app/widgets/atomic/worthit-wordmark.dart';

class MainAppBar extends AppBar {

  MainAppBar()
      : super(
            centerTitle: false,
            title: WorthItWordmark(24),
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
