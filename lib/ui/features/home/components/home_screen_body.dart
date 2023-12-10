import 'package:chips_choice/chips_choice.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_book/ui/features/home/components/build_grid_view.dart';
import 'package:e_book/ui/features/home/components/search_part.dart';
import 'package:e_book/ui/features/home/controllers/books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/constant/app_constant.dart';
import 'build_all_books.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  int tag = 0;
  List<String> options = [
    "All",
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: BlocConsumer<BooksCubit, BooksState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              children: [
                buildSearchPart(context),
                const Gap(5),
                ChipsChoice<int>.single(
                  value: tag,
                  onChanged: (val) {
                    setState(() {
                      BooksCubit.get(context).getBooks(query: options[val]);
                      tag = val;
                    });
                  },
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                ),
                const Gap(15),
                ConditionalBuilder(
                  condition: state is! LoadingState,
                  builder: (context) {
                    if (tag == 0) {
                      return buildAllBooks(context);
                    } else {
                      return BuildGridView(
                        list: BooksCubit.get(context).queryList,
                        shrinkWrap: true,
                        scrollPhysics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: .61,
                      );
                    }
                  },
                  fallback: (context) => Padding(
                    padding: EdgeInsets.only(
                      top: AppConstant.deviceHeight(context) / 3,
                    ),
                    child: Center(
                      child: LoadingAnimationWidget.fourRotatingDots(
                        color: const Color(AppColors.kPrimaryColor),
                        size: 55,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
