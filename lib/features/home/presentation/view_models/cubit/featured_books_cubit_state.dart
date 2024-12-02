part of 'featured_books_cubit_cubit.dart';

sealed class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksCubitState {}

class FeaturedBooksLoading extends FeaturedBooksCubitState {}

class FeaturedBooksFailure extends FeaturedBooksCubitState {
  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksCubitState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
