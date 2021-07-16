import 'package:flutter/widgets.dart';
import 'package:worth_it_app/pages/page-dashboard.dart';
import 'package:worth_it_app/pages/page-onboarding.dart';

Map<String, WidgetBuilder> createRouter(BuildContext context) {
  return {
    '/onboarding': (context) => OnboardingPage(),
    '/dashboard': (context) => DashboardPage()
  };
}
