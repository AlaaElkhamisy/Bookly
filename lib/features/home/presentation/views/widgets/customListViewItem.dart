import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Custom_List_View_Item extends StatelessWidget {
  const Custom_List_View_Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
              image: const DecorationImage(
                  image: AssetImage(Assets_Data.book1), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
