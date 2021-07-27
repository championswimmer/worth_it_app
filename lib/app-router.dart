import 'package:flutter/widgets.dart';
import 'package:worth_it_app/pages/page-home.dart';
import 'package:worth_it_app/pages/page-onboarding.dart';

Map<String, WidgetBuilder> createRouter(BuildContext context) {
  return {
    AppRoutes.ONBOARDING: (context) => OnboardingPage(),
    AppRoutes.HOME: (context) => HomePage()
  };
}

abstract class AppRoutes {
  static const ONBOARDING = '/onboarding';
  static const HOME = '/home';
  static const HOME_DASHBOARD = '/home/dashboard';
  static const HOME_WISHLIST = '/home/wishlist';
  static const HOME_SETTINGS = '/home/settings';
}

abstract class AppNavigators {
  static final MAIN = GlobalKey<NavigatorState>();
  static final HOME = GlobalKey<NavigatorState>();
}
