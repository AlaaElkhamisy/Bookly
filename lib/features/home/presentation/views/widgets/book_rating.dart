import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Book_Rating extends StatelessWidget {
  const Book_Rating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: rating == 0 ? Colors.grey[600] : const Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: AppTextStyles.text_Style16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "($count)",
          style: AppTextStyles.text_Style14
              .copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
