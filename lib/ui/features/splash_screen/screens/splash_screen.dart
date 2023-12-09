import 'package:e_book/config/colors/app_colors.dart';
import 'package:e_book/core/constant/app_constant.dart';
import 'package:e_book/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/l10n.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppConstant.deviceHeight(context),
        width: AppConstant.deviceWidth(context),
        child: AnimatedContainer(
          duration: const Duration(seconds: 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.logoBook,
                width: AppConstant.deviceWidth(context) / 2.5,
              ),
              Text(
                S.of(context).appName,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 30.sp,
                      color: const Color(AppColors.kPrimaryColor),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
