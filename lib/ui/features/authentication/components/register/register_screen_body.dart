import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:e_book/config/routes/routes_path.dart';
import 'package:e_book/core/components/animated_loading_indector.dart';
import 'package:e_book/core/components/custom_navigatation.dart';
import 'package:e_book/core/components/flutter_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/components/custom_button.dart';
import '../../../../../../core/components/custom_text_form_feild.dart';
import '../../../../../../core/constant/app_constant.dart';
import '../../../../../../generated/l10n.dart';
import '../../controller/auth_cubit.dart';
import '../common/build_rich_text.dart';
import '../common/build_text_next_to_text_button.dart';
import '../common/build_two_text_form_field.dart';

class RegisterScreenBody extends StatelessWidget {
  RegisterScreenBody({super.key});

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var nameController = TextEditingController();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is GetUserDataSuccessState) {
          showToast(
              message: 'Created account successfully',
              state: ToastState.SUCCESS);
          CustomNavigation.navigateByNamedTo(context, RoutePath.layout);
        } else if (state is FailureState) {
          showToast(message: state.error, state: ToastState.ERROR);
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Center(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                  height: AppConstant.deviceHeight(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomRichText(
                        textPartOne: S.of(context).sign,
                        textPartTwo: S.of(context).up,
                      ),
                      Text(
                        S.of(context).registerScreenDescription,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const Gap(30),
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
                            prefixIcon: IconlyBroken.profile,
                            controller: nameController,
                            border: InputBorder.none,
                            label: S.of(context).registerFullName,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return "should enter ${S.of(context).registerFullName}";
                              } else {
                                return null;
                              }
                            }),
                      ),
                      const Gap(20),
                      CustomTwoTextFromField(
                        controller1: emailController,
                        controller2: passController,
                        label1: S.of(context).loginScreenEmail,
                        label2: S.of(context).loginScreenPass,
                        isPass: false,
                        isPass2: true,
                        prefixIcon1: IconlyBroken.message,
                        prefixIcon2: IconlyBroken.lock,
                      ),
                      const Gap(30),
                      const Gap(20),
                      ConditionalBuilder(
                        condition: state is! LoadingState,
                        builder: (context) => CustomButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              AuthCubit.get(context).userRegister(
                                  email: emailController.text,
                                  password: passController.text,
                                  name: nameController.text);
                            }
                          },
                          text: S.of(context).signUp,
                          height: 37.h,
                          color: AppColors.kPrimaryColor,
                          width: AppConstant.deviceWidth(context),
                          horizontal: 0,
                          vertical: 0,
                          radius: 10,
                          textColor: AppColors.kWhiteColor,
                          fontSize: 21,
                        ),
                        fallback: (context) => const AnimatedLoadingIndector(),
                      ),
                      const Gap(30),
                      customTextNextToTextButton(
                          context: context,
                          text: S.of(context).registerScreenHaveAccount,
                          textButton: S.of(context).loginScreenButton,
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
