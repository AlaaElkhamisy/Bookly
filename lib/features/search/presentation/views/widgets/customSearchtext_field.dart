import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/search/presentation/views_model/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({
    super.key,
  });
  //final String? text;

  //final void Function(String)? onChanged;
  String? title;

  var _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (data) {
        title = data;
      },
      // onSubmitted: (data) async {
      //   BlocProvider.of<SearchCubit>(context).fetchMatchedBooks(title: title!);
      // },
      controller: _searchTextController,
      cursorColor: Colors.white,
      decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                _searchForBooks(context);
              },
              icon: const Opacity(
                  opacity: 0.6, child: Icon(FontAwesomeIcons.magnifyingGlass))),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: "Book name ...",
          hintStyle: AppTextStyles.text_Style20),
      style: AppTextStyles.text_Style20,
    );
  }

  void _searchForBooks(BuildContext context) {
    if (title != null && title!.isNotEmpty) {
      BlocProvider.of<SearchCubit>(context).fetchMatchedBooks(title: title!);
    }
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
