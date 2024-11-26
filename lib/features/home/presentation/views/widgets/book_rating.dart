import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Book_Rating extends StatelessWidget {
  const Book_Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: AppTextStyles.text_Style16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2390)",
          style: AppTextStyles.text_Style14
              .copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
