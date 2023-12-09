import 'package:e_book/ui/cubit/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body:
              AppCubit.get(context).screens[AppCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: AppCubit.get(context).items,
            currentIndex: AppCubit.get(context).currentIndex,
            onTap: (index) {
              AppCubit.get(context).changeNavBar(index);
            },
          ),
        );
      },
    );
  }
}
