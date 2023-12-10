import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../config/routes/routes_path.dart';
import '../../../../core/components/custom_navigatation.dart';
import '../../../../core/components/custom_text_form_feild.dart';
import '../../../../core/constant/app_constant.dart';
import '../../../../generated/l10n.dart';

InkWell buildSearchPart(BuildContext context) {
  return InkWell(
    onTap: () {
      CustomNavigation.navigateByNamedTo(context, RoutePath.search);
    },
    child: Container(
      width: AppConstant.deviceWidth(context),
      height: 47.h,
      decoration: BoxDecoration(
        color: const Color(AppColors.kLoginWithGoogleColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: CustomTextFormField(
        isPassword: false,
        maxLine: 1,
        isEnable: false,
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
  );
}
