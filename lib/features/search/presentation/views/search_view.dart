import 'package:bookly/features/search/presentation/views/widgets/search_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Search_Body(),
    );
  }
}