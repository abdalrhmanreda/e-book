part of 'lib_cubit.dart';

@immutable
abstract class LibState {}

class LibInitial extends LibState {}

class LoadingState extends LibState {}

class FailureState extends LibState {
  final String error;

  FailureState({required this.error});
}

class SuccessState extends LibState {}
