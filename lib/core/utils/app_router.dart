import 'package:bookly/features/home/presentation/views/book_details.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const Home_Page = "/home";
  static const Book_Details_Page = "/book_details";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const Splash_View(),
    ),
    GoRoute(
      path: "/home",
      builder: (context, state) => const Home_View(),
    ),
    GoRoute(
      path: "/book_details",
      builder: (context, state) => const Book_Details_View(),
    )
  ]);
}
