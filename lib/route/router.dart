import 'package:flutter/material.dart';
import 'export_screens.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (context) => const WelcomeScreen(),
        );
      case homeScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case onboardingScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const OnboardingTabs(index: 0),
        );
      default:
        return MaterialPageRoute(
          // Make a screen for undefined route
          builder: (context) => const HomeScreen(),
        );
    }
  }
}
