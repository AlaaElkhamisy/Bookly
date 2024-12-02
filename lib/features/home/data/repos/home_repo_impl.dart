import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest");
      List<BookModel> books = [];
      //in this for loop i told it to go to Map data and go to items , then return data as BookModel
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      // here if we don't return the books list as the right side of either this may give an error because we told it that the right side is the sccuessed state
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:Programming");
      List<BookModel> books = [];
      //in this for loop i told it to go to Map data and go to items , then return data as BookModel
      for (var item in data["items"]) {
        books.add(BookModel.fromJson(item));
      }
      // here if we don't return the books list as the right side of either this may give an error because we told it that the right side is the sccuessed state
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
