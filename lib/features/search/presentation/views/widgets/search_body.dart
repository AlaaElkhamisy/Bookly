import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestsellerListview_item.dart';
import 'package:bookly/features/search/presentation/views/widgets/customSearchtext_field.dart';
import 'package:flutter/material.dart';

class Search_Body extends StatelessWidget {
  const Search_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: CustomSearchTextField(),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Text(
              "Search Result",
              style: AppTextStyles.text_Style20,
            ),
          ),
          Expanded(child: Search_Result())
        ],
      ),
    );
  }
}

class Search_Result extends StatelessWidget {
  const Search_Result({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // i tell listView to take the height of its children
      shrinkWrap: true,
      //here we tell listView to not scroll because the customScrollView will scroll instead
      //physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Best_Seller_ListView_item(),
        );
      },
    );
  }
}
