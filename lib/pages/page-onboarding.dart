import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:worth_it_app/app-router.dart';
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
        Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Text('Go To Dashboard'),
      ),
    );

    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.topCenter,
        fit: StackFit.expand,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              background,
            ],
          ),
          Positioned(
            top: 100,
            child: WorthItWordmark(44),
          ),
          Positioned(
            child: button,
            bottom: 30,
          )
        ],
      )),
    );
  }
}
