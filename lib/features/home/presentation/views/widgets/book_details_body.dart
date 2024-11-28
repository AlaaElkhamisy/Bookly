import 'package:bookly/features/home/presentation/views/widgets/bookDetails_appBar.dart';
import 'package:flutter/material.dart';

class Book_Details_Body extends StatelessWidget {
  const Book_Details_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [BookDetails_AppBar()],
        ),
      ),
    );
  }
}
