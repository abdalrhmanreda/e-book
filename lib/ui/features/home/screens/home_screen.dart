import 'package:e_book/config/colors/app_colors.dart';
import 'package:e_book/ui/features/home/components/home_screen_body.dart';
import 'package:e_book/ui/features/home/controllers/books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BooksCubit, BooksState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SvgPicture.asset(
                Assets.logoBook,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  IconlyBroken.filter,
                  size: 28,
                  color: Color(AppColors.kPrimaryColor),
                ),
              ),
            ],
          ),
          body: const HomeScreenBody(),
        );
      },
    );
  }
}
