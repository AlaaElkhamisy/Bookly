import 'package:bookly/features/home/presentation/views/widgets/book_details_body.dart';
import 'package:flutter/material.dart';

class Book_Details_View extends StatelessWidget {
  const Book_Details_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Book_Details_Body(),
    );
  }
}