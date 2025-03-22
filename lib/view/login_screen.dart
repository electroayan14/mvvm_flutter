import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mvvm_flutter/view/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background Image
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/background_image.jpg",
              fit: BoxFit.cover,
            ),
          ),
          //Blurred Container with Elevation
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomTextField(
                    hintTextValue: "Enter username",
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  const CustomTextField(
                      hintTextValue: "Enter password", obscure: true),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
