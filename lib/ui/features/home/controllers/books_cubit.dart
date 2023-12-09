import 'package:e_book/core/api/api_constant.dart';
import 'package:e_book/core/api/dio_helper.dart';
import 'package:e_book/ui/features/home/models/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit() : super(BooksInitial());
  static BooksCubit get(context) => BlocProvider.of(context);

  List<BookModel> recommend = [];
  void getRecommendBooks() {
    DioHelper.getData(url: ApiConstant.volumes, query: {'q': "recommend"})
        .then((value) {
      for (var item in value.data['items']) {
        recommend.add(BookModel.fromJson(item));
      }
      emit(SuccessState());
    }).catchError((error) {
      debugPrint(error.toString());
      emit(FailureState());
    });
  }
}
