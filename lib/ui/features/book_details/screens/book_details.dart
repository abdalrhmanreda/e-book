import 'package:e_book/config/colors/app_colors.dart';
import 'package:e_book/core/components/custom_sliver_bar.dart';
import 'package:e_book/core/components/custom_sliver_to_box_adapter.dart';
import 'package:e_book/core/constant/app_constant.dart';
import 'package:e_book/ui/features/home/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../generated/l10n.dart';
import '../components/build_two_button.dart';
import '../components/line_details.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        CustomSliverAppBar(
            image: bookModel.volumeInfo.imageLinks.smallThumbnail,
            height: AppConstant.deviceHeight(context) / 2.5),
        CustomSliverToBoxAdapter(
          widget: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${bookModel.volumeInfo.title}',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 16.sp),
                ),
                const Gap(10),
                buildLineDetails(context, bookModel),
                const Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).summary,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 18.sp),
                    ),
                    const Gap(10),
                    Text(
                      '${bookModel.volumeInfo.description}',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: const Color(AppColors.kGreyColor)),
                    ),
                  ],
                ),
                buildTwoButton(context, bookModel),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
