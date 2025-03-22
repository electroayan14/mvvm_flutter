import 'package:flutter/material.dart';
import 'package:mvvm_flutter/routes/named_routes.dart';
import 'package:mvvm_flutter/view/login_screen.dart';
import 'package:mvvm_flutter/view/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RouteNames.loginScreen:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("Something went wrong..."),
            ),
          );
        });
    }
  }
}
