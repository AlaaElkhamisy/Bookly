import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestSeller.dart';
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
        Best_Seller_ListView()
      ],
    );
  }
}

class Best_Seller_ListView extends StatelessWidget {
  const Best_Seller_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  image: const DecorationImage(
                      image: AssetImage(Assets_Data.book1), fit: BoxFit.fill)),
            ),
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
