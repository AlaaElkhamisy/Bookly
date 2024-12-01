import 'package:bookly/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class Featured_Book_List_View extends StatelessWidget {
  const Featured_Book_List_View({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15),
            child: const Custom_Book_Image(),
          );
        },
      ),
    );
  }
}
