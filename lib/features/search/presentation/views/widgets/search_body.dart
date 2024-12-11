import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/customSearchtext_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';

class Search_Body extends StatelessWidget {
  const Search_Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: CustomSearchTextField(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                "Search Result",
                style: AppTextStyles.text_Style20,
              ),
            ),
            const Expanded(child: Search_Result())
          ],
        ),
      ),
    );
  }
}
