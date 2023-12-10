import 'package:e_book/core/constant/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';

Row buildDetailsItem(
    {required BuildContext context,
    required String details,
    required String title}) {
  return Row(
    children: [
      SizedBox(
        width: AppConstant.deviceWidth(context) / 3.9,
        child: Column(
          children: [
            Text(
              details,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(AppColors.kPrimaryColor),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color(AppColors.kGreyColor),
                  ),
            ),
          ],
        ),
      ),
    ],
  );
}
