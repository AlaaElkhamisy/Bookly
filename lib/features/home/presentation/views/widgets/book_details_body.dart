import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookDetails_appBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookdetails_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_section.dart';
import 'package:flutter/material.dart';

class Book_Details_Body extends StatelessWidget {
  const Book_Details_Body({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      //this widget told its child to take the remaining space in the screen
      SliverFillRemaining(
        //here we told its child to not scroll because customScrollView already scroll
        hasScrollBody: false,
        child: SafeArea(
          child: Column(
            children: [
              const BookDetails_AppBar(),
              BookDetails_Section(
                book: bookModel,
              ),
              const Expanded(
                child: SizedBox(
                  height: 40,
                ),
              ),
              const Similar_Section(),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
