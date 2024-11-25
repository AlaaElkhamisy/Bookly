import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_strings.dart';
import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Splash_Body extends StatefulWidget {
  const Splash_Body({super.key});

  @override
  State<Splash_Body> createState() => _Splash_BodyState();
}

// SingleTickerProviderStateMixin بتوفر انسيابيه ال Animation  وانه يحصل واحدة واحدة
class _Splash_BodyState extends State<Splash_Body>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  // there i'll create animation object take the value from the animation controller and provide me flexability because controller gives you value from 0 to 1 which not satisfy all animations
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimations();
    NavigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              AppStrings.appName,
              style: AppTextStyles.appName_Style,
            ),
          ),

          // we added animation builder because the set state update the hole splash ui i not the animated text widget
          SlidingText(slidingAnimation: slidingAnimation)
        ],
      ),
    );
  }

  void initSlidingAnimations() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
    // slidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const Home_View(),
          transition: Transition.fade, duration: TransitionDuration);
    });
  }
}
