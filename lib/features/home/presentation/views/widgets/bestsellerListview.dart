import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Best_Seller_ListView extends StatelessWidget {
  const Best_Seller_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    maxLines: 2,
                    //put points show that there are hide words
                    overflow: TextOverflow.ellipsis,
                    "Harry Potter and the Goblet of Fire",
                    style: AppTextStyles.text_Style20,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
