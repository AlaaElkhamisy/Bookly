import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/box_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class BookDetails_Section extends StatelessWidget {
  const BookDetails_Section({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: Custom_Book_Image(
            imageUrl: book.volumeInfo.imagelinkes?.thumbnail ?? "",
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          textAlign: TextAlign.center,
          book.volumeInfo.title!,
          style: AppTextStyles.title_Style,
        ),
        // const SizedBox(
        //   height: 5,
        // ),
        Text(
          book.volumeInfo.authors![0],
          style: AppTextStyles.text_Style14
              .copyWith(fontSize: 18, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 10,
        ),
        Book_Rating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: book.volumeInfo.averageRating?.round() ?? 0,
          count: book.volumeInfo.pageCount ?? 0,
        ),
        const SizedBox(
          height: 30,
        ),
        Box_Action(
          bookModel: book,
        )
      ]),
    );
  }
}
