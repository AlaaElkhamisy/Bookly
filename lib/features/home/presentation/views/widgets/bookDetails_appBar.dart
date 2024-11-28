import 'package:flutter/material.dart';

class BookDetails_AppBar extends StatelessWidget {
  const BookDetails_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
              size: 28,
              color: Colors.white,
            )),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 28,
              color: Colors.white,
            ))
      ],
    );
  }
}
