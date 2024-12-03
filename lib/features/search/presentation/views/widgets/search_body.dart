import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/presentation/views/widgets/customSearchtext_field.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_listview.dart';
import 'package:flutter/material.dart';

class Search_Body extends StatelessWidget {
  const Search_Body({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
          Expanded(
              child: Search_Result(
            books: bookModel,
          ))
        ],
      ),
    );
  }
}
