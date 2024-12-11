import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestsellerListview_item.dart';
import 'package:bookly/features/search/presentation/views_model/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search_Result extends StatelessWidget {
  const Search_Result({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.builder(
            // i tell listView to take the height of its children
            shrinkWrap: true,
            //here we tell listView to not scroll because the customScrollView will scroll instead
            //physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.matchBooks.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Best_Seller_ListView_item(
                  bookModel: state.matchBooks[index],
                ),
              );
            },
          );
        } else if (state is SearchFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const Center(
            child: Text("Search for Books"),
          );
        }
      },
    );
  }
}
