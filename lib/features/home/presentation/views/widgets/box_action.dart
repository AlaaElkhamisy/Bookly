import 'package:bookly/core/widgets/custom_btn.dart';
import 'package:flutter/material.dart';

class Box_Action extends StatelessWidget {
  const Box_Action({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            text: "19.99 €",
          )),
          Expanded(
              child: CustomButton(
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            text: 'Free preview',
            fontSize: 16,
          ))
        ],
      ),
    );
  }
}
