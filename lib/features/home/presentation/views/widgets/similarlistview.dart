import 'package:bookly/core/widgets/custom_error.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Similar_Book_List_View extends StatelessWidget {
  const Similar_Book_List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Custom_Book_Image(
                    imageUrl:
                        "https://i.harperapps.com/hcanz/covers/9781460763650/x293.jpg",
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
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
