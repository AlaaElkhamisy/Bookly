import 'package:bookly/core/utils/app_strings.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Splash_Body extends StatelessWidget {
  const Splash_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              AppStrings.appName,
              style: AppTextStyles.appName_Style,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Read free books",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
