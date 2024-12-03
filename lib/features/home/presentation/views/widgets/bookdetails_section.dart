import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/bookDetails_appBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/box_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class BookDetails_Section extends StatelessWidget {
  const BookDetails_Section({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [
        const BookDetails_AppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.19),
          child: const Custom_Book_Image(
            imageUrl:
                "https://i.harperapps.com/hcanz/covers/9781460763650/x293.jpg",
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          "The Jungle Book",
          style: AppTextStyles.title_Style,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Rudyard Kipling",
          style: AppTextStyles.text_Style14
              .copyWith(fontSize: 18, fontStyle: FontStyle.italic),
        ),
        const SizedBox(
          height: 18,
        ),
        Book_Rating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 5,
          count: 250,
        ),
        const SizedBox(
          height: 37,
        ),
        const Box_Action()
      ]),
    );
  }
}
