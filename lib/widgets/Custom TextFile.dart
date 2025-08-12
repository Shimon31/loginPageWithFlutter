import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;  // Use this field
  final String hintText;
  final Widget? prefixWidget;
  final bool obscureText;

  CustomTextField(
      this.controller, {
        super.key,
        required this.hintText,
        this.prefixWidget,
        this.obscureText = false,
      });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 20, color: Colors.black),
      obscureText: obscureText,
      controller: controller,   // Use the passed-in controller here
      decoration: InputDecoration(
        hintText: hintText,
        fillColor: Colors.grey[50],
        filled: true,
        prefixIcon: prefixWidget,
        enabledBorder: OutlineInputBorder(),
        hintStyle: TextStyle(color: Colors.black54, fontSize: 20),
        focusedBorder: OutlineInputBorder(),
      ),
    );
  }
}
