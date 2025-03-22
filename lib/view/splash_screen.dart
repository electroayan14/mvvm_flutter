import 'package:flutter/material.dart';
import 'package:mvvm_flutter/routes/named_routes.dart';
import 'package:mvvm_flutter/utils/colors.dart';
import 'package:mvvm_flutter/view/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RouteNames.loginScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Image.asset("assets/splash_image.gif")),
    );
  }
}
