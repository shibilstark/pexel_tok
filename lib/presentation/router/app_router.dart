// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import '../screens/landing_screen/landing_screen.dart';

class AppRouter {
  static const SPLASH_SCREEN = "/";
  static const DASH_BOARD = "/dashboard";
  static const LANDING_SCREEN = "/landing";
  static const SELECT_PREFERENCE_SCREEN = "/select_preference";

  static Route? ongeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case LANDING_SCREEN:
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      default:
        return null;
    }
  }
}

class AppNavigator {
  static pop(BuildContext context, {bool? value}) async {
    Navigator.pop(context, value);
  }

  static push({
    required BuildContext context,
    required String screenName,
    Map<String, dynamic>? arguments,
  }) async {
    Navigator.pushNamed(context, screenName, arguments: arguments);
  }

  static pushReplacement({
    required BuildContext context,
    required String screenName,
    Map<String, dynamic>? arguments,
  }) async {
    Navigator.pushReplacementNamed(context, screenName, arguments: arguments);
  }

  static popAndPush(
      {required BuildContext context, required String screenName}) async {
    Navigator.popAndPushNamed(context, screenName);
  }

  static clearRouteIfFirst(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}
