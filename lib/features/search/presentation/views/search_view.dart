import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_body.dart';
import 'package:bookly/features/search/presentation/views_model/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  void initState() {
    BlocProvider.of<SearchCubit>(context)
        .fetchMatchedBooks(title: widget.bookModel.volumeInfo.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Search_Body(
        bookModel: widget.bookModel,
      ),
    );
  }
}
