import 'package:e_book/core/api/api_constant.dart';
import 'package:e_book/core/api/dio_helper.dart';
import 'package:e_book/ui/features/home/models/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit() : super(BooksInitial());
  static BooksCubit get(context) => BlocProvider.of(context);

  List<BookModel> bestSeller = [];
  List<BookModel> popular = [];
  List<BookModel> topAuthor = [];
  List<BookModel> healthy = [];
  List<BookModel> programming = [];
  List<BookModel> queryList = [];
  void getBestSellerBooks() {
    emit(LoadingState());

    DioHelper.getData(
        url: ApiConstant.volumes,
        query: {'q': "best seller", 'Flitering': 'free-ebooks'}).then((value) {
      (value.data['items']).forEach((element) {
        bestSeller.add(BookModel.fromJson(element));
      });
      print(bestSeller[5].volumeInfo.title);
      emit(SuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState());
    });
  }

  void getTopAuthorBooks() {
    DioHelper.getData(
        url: ApiConstant.volumes,
        query: {'q': "top author", 'Flitering': 'free-ebooks'}).then((value) {
      (value.data['items']).forEach((element) {
        topAuthor.add(BookModel.fromJson(element));
      });
      emit(SuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState());
    });
  }

  void getHealthyBooks() {
    DioHelper.getData(
        url: ApiConstant.volumes,
        query: {'q': "healthy", 'Flitering': 'free-ebooks'}).then((value) {
      (value.data['items']).forEach((element) {
        healthy.add(BookModel.fromJson(element));
      });
      emit(SuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState());
    });
  }

  void getProgrammingBooks() {
    DioHelper.getData(
        url: ApiConstant.volumes,
        query: {'q': "programming", 'Filtering': 'free-ebooks'}).then((value) {
      (value.data['items']).forEach((element) {
        programming.add(BookModel.fromJson(element));
      });
      emit(SuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState());
    });
  }

  void getBooks({required String query}) {
    queryList = [];
    emit(LoadingState());
    DioHelper.getData(
        url: ApiConstant.volumes,
        query: {'q': "$query", 'Filtering': 'free-ebooks'}).then((value) {
      (value.data['items']).forEach((element) {
        queryList.add(BookModel.fromJson(element));
      });
      emit(SuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState());
    });
  }
}
