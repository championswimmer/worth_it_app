import 'package:flutter/widgets.dart';
import 'package:worth_it_app/pages/page_home.dart';
import 'package:worth_it_app/pages/page_onboarding_form.dart';
import 'package:worth_it_app/pages/page_onboarding.dart';

Map<String, WidgetBuilder> createRouter(BuildContext context) {
  return {
    AppRoutes.ONBOARDING: (context) => OnboardingPage(),
    AppRoutes.ONBOARDING_FORM: (context) => OnboardingFormPage(),
    AppRoutes.HOME: (context) => HomePage()
  };
}

abstract class AppRoutes {
  static const ONBOARDING = '/onboarding';
  static const ONBOARDING_FORM = '/onboarding/form';
  static const HOME = '/home';
  static const HOME_DASHBOARD = '/home/dashboard';
  static const HOME_WISHLIST = '/home/wishlist';
  static const HOME_SETTINGS = '/home/settings';
}

abstract class AppNavigators {
  static final MAIN = GlobalKey<NavigatorState>();
  static final HOME = GlobalKey<NavigatorState>();
}
