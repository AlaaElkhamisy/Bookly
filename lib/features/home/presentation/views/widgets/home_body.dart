import 'package:bookly/features/home/presentation/views/widgets/bestSeller.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestSeller_ListView.dart';
import 'package:bookly/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class Home_Body extends StatelessWidget {
  const Home_Body({super.key});

  @override
  Widget build(BuildContext context) {
    //CustomScrollView is used for nested scroll views
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Custom_App_Bar(),
            Featured_Book_List_View(),
            Best_Seller_Text(),
            SizedBox(
              height: 20,
            ),
          ],
        )),
        SliverToBoxAdapter(
          child: Best_Seller_List_View(),
        )
      ],
    );
  }
}
