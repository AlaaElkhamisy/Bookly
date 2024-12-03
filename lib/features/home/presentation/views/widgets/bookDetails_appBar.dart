import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetails_AppBar extends StatelessWidget {
  const BookDetails_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              size: 28,
              color: Colors.white,
            )),
        const Spacer(),
        IconButton(
            padding: EdgeInsets.zero,
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
