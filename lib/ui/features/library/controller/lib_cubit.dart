import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_book/ui/features/home/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'lib_state.dart';

class LibCubit extends Cubit<LibState> {
  LibCubit() : super(LibInitial());
  static LibCubit get(context) => BlocProvider.of(context);

  void addToFav({required BookModel bookModel}) {
    emit(LoadingState());
    FirebaseFirestore.instance
        .collection('fav')
        .add(bookModel.toJson())
        .then((value) {
      getFav();
      emit(SuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(FailureState(error: error.toString()));
    });
  }

  List<BookModel> fav = [];
  List<String> favBooksId = [];

  void getFav() {
    fav = [];
    emit(LoadingState());
    FirebaseFirestore.instance.collection('fav').get().then((value) {
      for (var element in value.docs) {
        favBooksId.add((element.id));
        fav.add(BookModel.fromJson(element.data()));
      }
      emit(SuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(FailureState(error: error.toString()));
    });
  }

  void removeFromFav({required String id}) {
    emit(LoadingState());
    FirebaseFirestore.instance.collection('fav').doc(id).delete().then((value) {
      getFav();
      emit(SuccessState());
    }).catchError((error) {
      emit(FailureState(error: error.toString()));
    });
  }
}
