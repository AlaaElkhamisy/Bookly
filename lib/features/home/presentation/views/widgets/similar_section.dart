import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similarlistview.dart';
import 'package:flutter/material.dart';

class Similar_Section extends StatelessWidget {
  const Similar_Section({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            "You can also like",
            style: AppTextStyles.text_Style16.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Similar_Book_List_View(),
      ],
    );
  }
}
