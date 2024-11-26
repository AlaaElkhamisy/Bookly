import 'package:bookly/core/utils/app_strings.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Best_Seller_Text extends StatelessWidget {
  const Best_Seller_Text({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16, top: 40),
      child: Text(
        AppStrings.bestSeller,
        style: AppTextStyles.primaryText_Style,
      ),
    );
  }
}
