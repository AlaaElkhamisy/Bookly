import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Best_Seller_ListView_item extends StatelessWidget {
  const Best_Seller_ListView_item({super.key});

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
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      image: const DecorationImage(
                          image: AssetImage(Assets_Data.book1),
                          fit: BoxFit.fill)),
                ),
              ),
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
                        "The Jungle Book",
                        style: AppTextStyles.text_Style20
                            .copyWith(fontFamily: "GT-Sectra-Fine"),
                      ),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Rudyard Kipling",
                      style: AppTextStyles.text_Style14.copyWith(
                          color: const Color.fromARGB(255, 158, 158, 158)),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "19.99 €",
                          style: AppTextStyles.text_Style20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        const Book_Rating()
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
