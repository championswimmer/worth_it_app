import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:worth_it_app/pages/page-dashboard.dart';
import 'package:worth_it_app/widgets/atomic/worthit-wordmark.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget background = SvgPicture.asset(
      'assets/images/onboard_bg.svg',
      semanticsLabel: 'Onboarding Background',
    );
    final button = ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => DashboardPage()));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Text('Go To Dashboard'),
      ),
    );

    return Scaffold(
        body: Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 100,
          child: WorthItWordmark(44),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            background,
          ],
        ),
        Positioned(
          child: button,
          bottom: 30,
        )
      ],
    ));
  }
}
