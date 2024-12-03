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
            child: Custom_Book_Image(
              imageUrl:
                  "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pinterest.com%2Fpin%2F477170523022179308%2F&psig=AOvVaw1BMoRSc7DTPysdqtAzTxgB&ust=1733310674271000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCMDgpou8i4oDFQAAAAAdAAAAABAE",
            ),
          );
        },
      ),
    );
  }
}
