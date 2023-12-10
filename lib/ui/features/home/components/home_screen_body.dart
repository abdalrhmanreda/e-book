import 'package:chips_choice/chips_choice.dart';
import 'package:e_book/ui/features/home/components/title_and_list_view.dart';
import 'package:e_book/ui/features/home/controllers/books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/custom_text_form_feild.dart';
import '../../../../core/constant/app_constant.dart';
import '../../../../generated/l10n.dart';

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
                Container(
                  width: AppConstant.deviceWidth(context),
                  height: 47.h,
                  decoration: BoxDecoration(
                    color: const Color(AppColors.kLoginWithGoogleColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CustomTextFormField(
                    isPassword: false,
                    maxLine: 1,
                    border: InputBorder.none,
                    label: S.of(context).search,
                    type: TextInputType.emailAddress,
                    prefixIcon: IconlyBroken.search,
                    suffixIcon: IconlyBroken.voice,
                    edgeInsetsGeometry: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                  ),
                ),
                const Gap(5),
                ChipsChoice<int>.single(
                  value: tag,
                  onChanged: (val) => setState(() => tag = val),
                  choiceItems: C2Choice.listFrom<int, String>(
                    source: options,
                    value: (i, v) => i,
                    label: (i, v) => v,
                  ),
                ),
                const Gap(15),
                TitleAndListView(
                    title: S.of(context).best,
                    list: BooksCubit.get(context).bestSeller),
                TitleAndListView(
                    title: S.of(context).popular,
                    list: BooksCubit.get(context).popular),
                TitleAndListView(
                    title: S.of(context).topAuthor,
                    list: BooksCubit.get(context).topAuthor),
                TitleAndListView(
                    title: S.of(context).healthy,
                    list: BooksCubit.get(context).healthy),
                TitleAndListView(
                    title: S.of(context).programming,
                    list: BooksCubit.get(context).programming),
              ],
            ),
          );
        },
      ),
    );
  }
}
