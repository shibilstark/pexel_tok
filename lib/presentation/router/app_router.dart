// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pexel_tok/presentation/screens/dashboard_screen/dashboard_screen.dart';
import 'package:pexel_tok/presentation/screens/preference_screen/preference_screen.dart';

import '../screens/landing_screen/landing_screen.dart';

class AppRouter {
  static const SPLASH_SCREEN = "/";
  static const DASH_BOARD = "/dashboard";
  static const LANDING_SCREEN = "/landing";
  static const SELECT_PREFERENCE_SCREEN = "/select_preference";

  static Route? ongeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case LANDING_SCREEN:
        return _animatePage(const LandingScreen());
      case SELECT_PREFERENCE_SCREEN:
        return _animatePage(const PreferenceScreen());
      case DASH_BOARD:
        return _animatePage(const DashBoardScreen());
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

  static pushAndRemoveUntil({
    required BuildContext context,
    required String screenName,
    Map<String, dynamic>? arguments,
  }) async {
    Navigator.pushNamedAndRemoveUntil(context, screenName, (predicate) {
      return false;
    });
  }

  static popAndPush(
      {required BuildContext context, required String screenName}) async {
    Navigator.popAndPushNamed(context, screenName);
  }

  static clearRouteIfFirst(BuildContext context) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }
}

Route _animatePage(Widget screen) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => screen,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const curve = Curves.bounceIn;
      const reverseCurve = Curves.bounceOut;

      final curvedAnimation = CurvedAnimation(
          parent: animation, curve: curve, reverseCurve: reverseCurve);

      return FadeTransition(
        opacity: curvedAnimation,
        child: child,
      );
    },
  );
}
