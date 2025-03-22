import 'package:flutter/material.dart';
import 'package:mvvm_flutter/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintTextValue, this.obscure});

  final String? hintTextValue;
  final bool? obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure ?? false,
      decoration: InputDecoration(
        hintText: hintTextValue ?? "",
        helperStyle: const TextStyle(color: Colors.white),
        border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }
}
