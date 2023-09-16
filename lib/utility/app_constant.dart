import 'package:flutter/material.dart';

class AppConstant {
  
  TextStyle h1Style({double? size}) {
    return TextStyle(
      fontSize: size ?? 48,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle h2Style() {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    );
  }

  TextStyle h3Style() {
    return TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    );
  }
}
