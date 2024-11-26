import 'package:bookly/features/home/presentation/views/widgets/bestSeller.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestsellerListview.dart';
import 'package:bookly/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class Home_Body extends StatelessWidget {
  const Home_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Custom_App_Bar(),
        Featured_Book_List_View(),
        Best_Seller_Text(),
        SizedBox(
          height: 20,
        ),
        Best_Seller_ListView()
      ],
    );
  }
}
