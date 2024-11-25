import 'package:bookly/features/home/presentation/views/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class Home_Body extends StatelessWidget {
  const Home_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Custom_App_Bar()],
    );
  }
}
