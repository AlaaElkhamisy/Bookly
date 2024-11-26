import 'package:bookly/features/home/presentation/views/widgets/bestsellerListview_item.dart';
import 'package:flutter/material.dart';

class Best_Seller_List_View extends StatelessWidget {
  const Best_Seller_List_View({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // i tell listView to take the height of its children
      shrinkWrap: true,
      //here we tell listView to not scroll because the customScrollView will scroll instead
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Best_Seller_ListView_item(),
        );
      },
    );
  }
}
