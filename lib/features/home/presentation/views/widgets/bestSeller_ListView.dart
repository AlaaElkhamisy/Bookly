import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/features/home/presentation/view_models/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestsellerListview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Best_Seller_List_View extends StatelessWidget {
  const Best_Seller_List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
            // i tell listView to take the height of its children
            shrinkWrap: true,
            //here we tell listView to not scroll because the customScrollView will scroll instead
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Best_Seller_ListView_item(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is BestSellerBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
