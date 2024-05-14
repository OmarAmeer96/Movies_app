import 'package:flutter/material.dart';
import 'package:movies_app/constants.dart';

class CustomMainTextField extends StatelessWidget {
  const CustomMainTextField({
    super.key,
    this.onChanged,
    this.controller,
    this.validator,
    required this.hintText,
    required this.borderColor,
    required this.focusedBorderColor,
    required this.enabledBorderColor,
    required this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    required this.obscureText,
    this.labelText,
  });

  final Function(String)? onChanged;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  final String hintText;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color enabledBorderColor;
  final TextInputType inputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final String? labelText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      enabled: true,
      keyboardType: inputType,
      style: TextStyle(
        color: Color(0xFFF3F3F3),
        fontFamily: kInterBold,
        fontSize: 24,
      ),
      decoration: InputDecoration(
        floatingLabelStyle: TextStyle(
          color: Color(0xFFF3F3F3),
          fontFamily: kInterBold,
          fontSize: 24,
        ),
        constraints: const BoxConstraints(
          // maxHeight: 80,
          minHeight: 40,
          maxWidth: double.infinity,
          minWidth: double.infinity,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xFFF3F3F3),
          fontFamily: kInterBold,
          fontSize: 24,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: Color(0xFFF3F3F3),
          fontFamily: kInterBold,
          fontSize: 24,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: borderColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: focusedBorderColor, width: 2.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.red, width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: enabledBorderColor, width: 1.0),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }
}
