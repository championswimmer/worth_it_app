import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingGreetingCard extends StatelessWidget {
  final String user;

  OnboardingGreetingCard({required this.user});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(30),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.green,
            width: 2,
            height: 40,
          ),
          Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello $user !",
                      style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w300,
                      )),
                  Text(
                    "let's get started",
                    style: GoogleFonts.workSans(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )),
          Spacer(),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 30, 10),
              child: Text(
                "👋",
                style: TextStyle(fontSize: 32),
              )),
        ],
      ),
    );
  }
}
