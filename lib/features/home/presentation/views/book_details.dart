import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Book_Details_View extends StatefulWidget {
  const Book_Details_View({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<Book_Details_View> createState() => _Book_Details_ViewState();
}

class _Book_Details_ViewState extends State<Book_Details_View> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Book_Details_Body(),
    );
  }
}
