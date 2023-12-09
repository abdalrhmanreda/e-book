part of 'books_cubit.dart';

@immutable
abstract class BooksState {}

class BooksInitial extends BooksState {}

class LoadingState extends BooksState {}

class FailureState extends BooksState {}

class SuccessState extends BooksState {}
