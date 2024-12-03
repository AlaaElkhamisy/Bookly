import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/book_details.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const Home_Page = "/home";
  static const Book_Details_Page = "/book_details";
  static const Search_View = "/search_view";
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
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child: Book_Details_View(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: "/search_view",
      builder: (context, state) => const SearchView(),
    ),
  ]);
}
