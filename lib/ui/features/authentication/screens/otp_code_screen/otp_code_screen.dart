import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/components/custom_button.dart';
import '../../../../../../core/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../config/colors/app_colors.dart';
import '../../components/common/build_rich_text.dart';
import '../../components/otp_code/otp_code.dart';
import '../../controller/auth_cubit.dart';

class OtpCodeScreen extends StatefulWidget {
  const OtpCodeScreen({super.key});

  @override
  State<OtpCodeScreen> createState() => _OtpCodeScreenState();
}

class _OtpCodeScreenState extends State<OtpCodeScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomRichText(
                    textPartOne: S.of(context).otpCodeEnter,
                    textPartTwo: S.of(context).otpCodeCode,
                  ),
                  Text(
                    'We have sent code to adba@gmail.com',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 17,
                          color: const Color(AppColors.kGreyColor),
                        ),
                  ),
                  const Gap(10),
                  OtpCode(),
                  CustomButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: S.of(context).submit,
                    height: 37.h,
                    color: AppColors.kPrimaryColor,
                    width: AppConstant.deviceWidth(context),
                    horizontal: 10,
                    vertical: 0,
                    radius: 10,
                    textColor: AppColors.kWhiteColor,
                    fontSize: 20,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
