import 'package:bookly/features/home/presentation/views/widgets/bookDetails_appBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class Book_Details_Body extends StatelessWidget {
  const Book_Details_Body({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const BookDetails_AppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.15),
              child: const Custom_Book_Image(),
            ),
          ],
        ),
      ),
    );
  }
}
