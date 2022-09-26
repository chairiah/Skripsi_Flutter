import 'package:flutter/material.dart';
import 'package:aplikasi_skripsi_ch/shared/theme.dart';

class CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String hinText;
  final Widget? prefixIcon;

  const CustomTextField({
    Key? key,
    this.obscureText = false,
    required this.hinText,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hinText,
        hintStyle: TextStyle(color: kBrownColor),
        prefixIcon: prefixIcon,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: kWhiteColor),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kWhiteColor),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kWhiteColor),
        ),
      ),
      cursorColor: kPrimaryColor,
      style: TextStyle(color: kBrownColor, fontSize: 20),
      obscureText: obscureText,
    );
  }
}
