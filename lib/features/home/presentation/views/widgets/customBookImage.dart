import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Custom_Book_Image extends StatelessWidget {
  const Custom_Book_Image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.white,
            image: const DecorationImage(
                image: AssetImage(Assets_Data.book1), fit: BoxFit.fill)),
      ),
    );
  }
}
