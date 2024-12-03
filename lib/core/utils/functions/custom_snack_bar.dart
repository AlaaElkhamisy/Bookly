import 'package:flutter/material.dart';

void Custom_Snack_Bar(context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
}
