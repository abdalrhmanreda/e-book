import 'package:e_book/ui/features/authentication/components/common/build_two_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/custom_button.dart';
import '../../../../core/components/custom_text_form_feild.dart';
import '../../../../core/constant/app_constant.dart';
import '../../../../generated/l10n.dart';
import '../../profile/components/code_and_phone.dart';

class BuildFaqScreen extends StatelessWidget {
  const BuildFaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          CustomTwoTextFromField(
            controller1: controller,
            controller2: controller,
            label1: S.of(context).registerFullName,
            label2: S.of(context).loginScreenEmail,
            isPass: false,
            isPass2: false,
          ),
          const Gap(15),
          buildCountryCodeAndPhone(controller),
          const Gap(15),
          Container(
            width: AppConstant.deviceWidth(context),
            height: 150.h,
            decoration: BoxDecoration(
              color: const Color(AppColors.kLoginWithGoogleColor),
              borderRadius: BorderRadius.circular(15),
            ),
            child: CustomTextFormField(
              isPassword: false,
              maxLine: 10,
              type: TextInputType.visiblePassword,
              controller: controller,
              border: InputBorder.none,
              label: 'Problem',
              edgeInsetsGeometry: const EdgeInsets.symmetric(
                vertical: 35,
              ),
            ),
          ),
          const Gap(25),
          CustomButton(
            onPressed: () {},
            text: S.of(context).send,
            width: AppConstant.deviceWidth(context),
            height: 37.h,
            radius: 15,
            color: AppColors.kPrimaryColor,
            textColor: AppColors.kWhiteColor,
            horizontal: 15,
            vertical: 15,
          ),
        ],
      ),
    );
  }
}
