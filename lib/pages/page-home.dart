import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:worth_it_app/pages/page-home-dashboard.dart';
import 'package:worth_it_app/pages/page-home-settings.dart';
import 'package:worth_it_app/pages/page-home-wishlist.dart';
import 'package:worth_it_app/widgets/appbar.dart';
import 'package:worth_it_app/widgets/base/home-route.dart';

import '../app-router.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedTab = 0;

  final _homeRoutes = [
    AppRoutes.HOME_DASHBOARD,
    AppRoutes.HOME_WISHLIST,
    AppRoutes.HOME_SETTINGS
  ];
  final _homeNavigator = Navigator(
    key: AppNavigators.HOME,
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case AppRoutes.HOME_WISHLIST:
          return HomePageRoute(builder: (context) => HomeWishlistPage());
        case AppRoutes.HOME_SETTINGS:
          return HomePageRoute(builder: (context) => HomeSettingsPage());
        case AppRoutes.HOME_DASHBOARD:
        default:
          return HomePageRoute(builder: (context) => HomeDashboardPage());
      }
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedTab,
        onTap: (value) {
          AppNavigators.HOME.currentState!.pushReplacementNamed(_homeRoutes[value]);
          setState(() => (_selectedTab = value));
        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blueGrey,
      ),
      body: _homeNavigator,
    );
  }
}
