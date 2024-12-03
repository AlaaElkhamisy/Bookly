import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Best_Seller_ListView_item extends StatelessWidget {
  const Best_Seller_ListView_item({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.Book_Details_Page);
      },
      child: SizedBox(
        height: 140,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Custom_Book_Image(
                  imageUrl: bookModel.volumeInfo.imagelinkes?.thumbnail ?? ""),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        maxLines: 2,
                        //put points show that there are hide words
                        overflow: TextOverflow.ellipsis,
                        bookModel.volumeInfo.title!,
                        style: AppTextStyles.text_Style20
                            .copyWith(fontFamily: "GT-Sectra-Fine"),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: AppTextStyles.text_Style14.copyWith(
                          color: const Color.fromARGB(255, 158, 158, 158)),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "Free",
                          style: AppTextStyles.text_Style20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        Book_Rating(
                          rating:
                              bookModel.volumeInfo.averageRating?.round() ?? 0,
                          count: bookModel.volumeInfo.pageCount!,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
