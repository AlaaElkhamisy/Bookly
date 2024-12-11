import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl extends SearchRepo {
  final ApiService apiService;
  SearchRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchMatchedBooks(
      {required String title}) async {
    try {
      var data = await apiService.get(
          endPoint:
              "volumes?Filtering=free-ebooks&q=title:$title&Sorting=relevance");
      List<BookModel> books = [];
      //in this for loop i told it to go to Map data and go to items , then return data as BookModel
      if (data["items"] != null) {
        for (var item in data["items"]) {
          books.add(BookModel.fromJson(item));
        }
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
