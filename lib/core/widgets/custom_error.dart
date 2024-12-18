import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textAlign: TextAlign.center,
        errMessage,
        style: AppTextStyles.text_Style20,
      ),
    );
  }
}
