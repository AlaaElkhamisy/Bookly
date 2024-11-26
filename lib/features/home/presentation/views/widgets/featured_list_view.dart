import 'package:bookly/features/home/presentation/views/widgets/customListViewItem.dart';
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
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: const Custom_List_View_Item(),
          );
        },
      ),
    );
  }
}
