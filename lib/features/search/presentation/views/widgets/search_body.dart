import 'package:bookly/features/search/presentation/views/widgets/customSearchtext_field.dart';
import 'package:flutter/material.dart';

class Search_Body extends StatelessWidget {
  const Search_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [CustomSearchTextField()],
        ),
      ),
    );
  }
}
