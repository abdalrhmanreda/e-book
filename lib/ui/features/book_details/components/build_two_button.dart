import 'package:e_book/ui/features/home/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/custom_button.dart';
import '../../../../core/constant/app_constant.dart';
import '../../../../core/methods/url_lunch.dart';
import '../../../../generated/l10n.dart';

Row buildTwoButton(BuildContext context, BookModel bookModel) {
  return Row(
    children: [
      CustomButton(
        onPressed: () {
          launchUrlMethod(link: bookModel.volumeInfo.previewLink!);
        },
        text: S.of(context).preview,
        width: AppConstant.deviceWidth(context) / 2.59,
        height: 37.h,
        radius: 10,
        color: AppColors.kPrimaryColor,
        textColor: AppColors.kWhiteColor,
        horizontal: 15,
        vertical: 15,
      ),
      CustomButton(
        onPressed: () {
          launchUrlMethod(link: bookModel.volumeInfo.infoLink!);
        },
        text: S.of(context).buy,
        width: AppConstant.deviceWidth(context) / 2.59,
        height: 37.h,
        radius: 10,
        color: AppColors.kPrimaryColor,
        textColor: AppColors.kWhiteColor,
        horizontal: 15,
        vertical: 15,
      ),
    ],
  );
}
