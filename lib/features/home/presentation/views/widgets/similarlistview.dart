import 'package:bookly/features/home/presentation/views/widgets/customBookImage.dart';
import 'package:flutter/material.dart';

class Similar_Book_List_View extends StatelessWidget {
  const Similar_Book_List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Custom_Book_Image(),
          );
        },
      ),
    );
  }
}
