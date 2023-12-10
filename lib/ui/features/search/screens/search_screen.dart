import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_book/core/components/animated_loading_indector.dart';
import 'package:e_book/core/components/custom_divider.dart';
import 'package:e_book/ui/features/home/controllers/books_cubit.dart';
import 'package:e_book/ui/features/search/components/list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/custom_text_form_feild.dart';
import '../../../../core/constant/app_constant.dart';
import '../../../../generated/l10n.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BlocConsumer<BooksCubit, BooksState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Column(
              children: [
                Container(
                  width: AppConstant.deviceWidth(context),
                  height: 48.h,
                  decoration: BoxDecoration(
                    color: const Color(AppColors.kLoginWithGoogleColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CustomTextFormField(
                    isPassword: false,
                    controller: searchController,
                    maxLine: 1,
                    onChanged: (value) {
                      BooksCubit.get(context).getBooks(query: value!);
                    },
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
                ConditionalBuilder(
                  condition: state is! LoadingState,
                  builder: (context) => Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      itemCount: BooksCubit.get(context).queryList.length,
                      itemBuilder: (context, index) => buildSearchListViewItem(
                          context: context,
                          bookModel: BooksCubit.get(context).queryList[index]),
                      separatorBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: myDivider(AppConstant.deviceWidth(context), 2),
                      ),
                    ),
                  ),
                  fallback: (context) => const AnimatedLoadingIndector(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
