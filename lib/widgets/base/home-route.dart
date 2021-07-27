import 'package:flutter/material.dart';

class HomePageRoute extends MaterialPageRoute {
  HomePageRoute({required WidgetBuilder builder, RouteSettings? settings})
      : super(builder: builder, settings: settings);

  // Using a fade transition to transition between home page tabs
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return new FadeTransition(opacity: animation, child: child);
  }



  @override
  Duration get transitionDuration => Duration(milliseconds: 300);
}
