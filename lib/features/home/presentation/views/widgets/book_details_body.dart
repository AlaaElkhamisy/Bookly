import 'package:bookly/features/home/presentation/views/widgets/bookdetails_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_section.dart';
import 'package:flutter/material.dart';

class Book_Details_Body extends StatelessWidget {
  const Book_Details_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: [
      //this widget told its child to take the remaining space in the screen
      SliverFillRemaining(
        //here we told its child to not scroll because customScrollView already scroll
        hasScrollBody: false,
        child: SafeArea(
          child: Column(
            children: [
              BookDetails_Section(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Similar_Section()
            ],
          ),
        ),
      ),
    ]);
  }
}
