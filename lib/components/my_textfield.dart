import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });
}

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding : const EdgeInsetsDirectional.symmetric(vertical: 25.0),
    child: TextField(
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFEEEEE)),
        ),
        fillColor: Color(0xFFBDBDBD),
        filled :true,
      ),
    ),
  );
  }