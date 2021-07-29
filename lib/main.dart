import 'package:flutter/material.dart';
import 'package:worth_it_app/app-router.dart';
import 'package:worth_it_app/pages/page_home.dart';

import 'app-theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: WorthItTheme.getMainAppTheme(),
      initialRoute: AppRoutes.ONBOARDING,
      routes: createRouter(context),
      debugShowCheckedModeBanner: false,
    );
  }
}
