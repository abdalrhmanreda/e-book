import 'package:e_book/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:icons_plus/icons_plus.dart';

class BuildContactUsScreen extends StatelessWidget {
  const BuildContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color(AppColors.kPrimaryColor),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  const Icon(
                    EvaIcons.facebook,
                    color: Color(AppColors.kPrimaryColor),
                    size: 28,
                  ),
                  const Gap(10),
                  Text(
                    'Facebook',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18.sp,
                        color: const Color(AppColors.kPrimaryColor)),
                  ),
                ],
              ),
            ),
          ),
          const Gap(15),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color(AppColors.kPrimaryColor),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  const Icon(
                    EvaIcons.linkedin,
                    color: Color(AppColors.kPrimaryColor),
                    size: 28,
                  ),
                  const Gap(10),
                  Text(
                    'LinkedIn',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18.sp,
                        color: const Color(AppColors.kPrimaryColor)),
                  ),
                ],
              ),
            ),
          ),
          const Gap(15),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color(AppColors.kPrimaryColor),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  const Icon(
                    EvaIcons.google,
                    color: Color(AppColors.kPrimaryColor),
                    size: 28,
                  ),
                  const Gap(10),
                  Text(
                    'Gmail',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18.sp,
                        color: const Color(AppColors.kPrimaryColor)),
                  ),
                ],
              ),
            ),
          ),
          const Gap(15),
          OutlinedButton(
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(
                    color: Color(AppColors.kPrimaryColor),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: SizedBox(
              height: 50.h,
              child: Row(
                children: [
                  const Icon(
                    EvaIcons.twitter,
                    color: Color(AppColors.kPrimaryColor),
                    size: 28,
                  ),
                  const Gap(10),
                  Text(
                    'Twitter',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18.sp,
                        color: const Color(AppColors.kPrimaryColor)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
