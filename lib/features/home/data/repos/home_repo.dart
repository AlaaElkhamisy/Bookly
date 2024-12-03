import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  // we used either to make the method return to types the right side when it sccuess , the left side for exceptions
  // in the left side we called failure class because in the app beginning we don't know types of failure which may occure so every failure appear we can add it in the failure class which directly handled in either widget
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> fetchSimilarBooks(
      {required String category});
}
