import 'package:bookly/features/home/presentation/views/widgets/home_body.dart';
import 'package:flutter/material.dart';

class Home_View extends StatelessWidget {
  const Home_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Home_Body(),
    );
  }
}
