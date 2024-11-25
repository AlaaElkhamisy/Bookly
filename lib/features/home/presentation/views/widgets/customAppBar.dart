import 'package:bookly/core/utils/app_strings.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.appName,
            style: AppTextStyles.appName_Style.copyWith(fontSize: 20),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 25,
              ))
        ],
      ),
    );
  }
}
