part of 'search_cubit.dart';

sealed class SearchState extends Equatable {
  const SearchState();

  @override
  List<Object> get props => [];
}

class SearchInitial extends SearchState {}

class SearchSuccess extends SearchState {
  final List<BookModel> matchBooks;

  const SearchSuccess(this.matchBooks);
}

class SearchLoading extends SearchState {}

class SearchFailure extends SearchState {
  final String errMessage;

  const SearchFailure(this.errMessage);
}
