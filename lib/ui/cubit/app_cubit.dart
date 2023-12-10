import 'package:e_book/ui/features/home/screens/home_screen.dart';
import 'package:e_book/ui/features/library/screens/library_screen.dart';
import 'package:e_book/ui/features/profile/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  List<Widget> screens = const [
    HomeScreen(),
    LibraryScreen(),
    ProfileScreen(),
  ];
  List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(icon: Icon(IconlyBroken.home), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.bookmark), label: ''),
    BottomNavigationBarItem(icon: Icon(IconlyBroken.profile), label: ''),
  ];

  int currentIndex = 0;
  void changeNavBar(int index) {
    currentIndex = index;
    emit(ChangeNavBarState());
  }
}
