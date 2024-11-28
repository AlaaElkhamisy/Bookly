import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const appName_Style = TextStyle(
      fontSize: 60,
      fontFamily: "Pacifico",
      fontWeight: FontWeight.bold,
      color: Colors.white);

  static const primaryText_Style =
      TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white);

  static const title_Style = TextStyle(
      fontSize: 30,
      fontFamily: "GT-Sectra-Fine",
      fontWeight: FontWeight.bold,
      color: Colors.white);

  static const text_Style14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.normal);

  static const text_Style20 = TextStyle(fontSize: 20, color: Colors.white);

  static const text_Style16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white);
}
