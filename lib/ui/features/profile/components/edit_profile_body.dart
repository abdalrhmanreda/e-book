import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/config/colors/app_colors.dart';
import 'package:e_book/core/components/custom_button.dart';
import 'package:e_book/core/components/custom_text_form_feild.dart';
import 'package:e_book/core/constant/app_constant.dart';
import 'package:e_book/ui/features/authentication/controller/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../generated/l10n.dart';
import 'code_and_phone.dart';

class EditProfileScreenBody extends StatelessWidget {
  const EditProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var addressController = TextEditingController();
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        nameController.text = AuthCubit.get(context).userModel!.name!;
        emailController.text = AuthCubit.get(context).userModel!.email!;
        addressController.text = AuthCubit.get(context).userModel!.address!;
        phoneController.text = AuthCubit.get(context).userModel!.phone!;
        File? profileImage = AuthCubit.get(context).profilePhoto;
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: profileImage == null
                          ? CachedNetworkImageProvider(
                              AuthCubit.get(context).userModel!.profileImage!)
                          : FileImage(profileImage) as ImageProvider,
                    ),
                    IconButton(
                      onPressed: () {
                        AuthCubit.get(context).getProfileImage();
                      },
                      icon: const Icon(
                        IconlyBroken.camera,
                        size: 30,
                        color: Color(AppColors.kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: AppConstant.deviceWidth(context),
                  height: 47.h,
                  decoration: BoxDecoration(
                    color: const Color(AppColors.kLoginWithGoogleColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CustomTextFormField(
                    controller: nameController,
                    isPassword: false,
                    maxLine: 1,
                    type: TextInputType.name,
                    border: InputBorder.none,
                    label: 'name',
                  ),
                ),
                const Gap(15),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: AppConstant.deviceWidth(context),
                  height: 47.h,
                  decoration: BoxDecoration(
                    color: const Color(AppColors.kLoginWithGoogleColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CustomTextFormField(
                    controller: emailController,
                    isPassword: false,
                    maxLine: 1,
                    type: TextInputType.emailAddress,
                    border: InputBorder.none,
                    label: 'email',
                  ),
                ),
                const Gap(15),
                Container(
                  margin: const EdgeInsets.all(5),
                  width: AppConstant.deviceWidth(context),
                  height: 47.h,
                  decoration: BoxDecoration(
                    color: const Color(AppColors.kLoginWithGoogleColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: CustomTextFormField(
                    controller: addressController,
                    isPassword: false,
                    maxLine: 1,
                    type: TextInputType.text,
                    border: InputBorder.none,
                    label: 'address',
                  ),
                ),
                const Gap(15),
                buildCountryCodeAndPhone(phoneController),
                CustomButton(
                  onPressed: () {
                    if (profileImage == null) {
                      AuthCubit.get(context).updateUserData(
                        name: nameController.text,
                        email: emailController.text,
                        phone: phoneController.text,
                        address: addressController.text,
                      );
                    } else {
                      AuthCubit.get(context).uploadImage(
                          name: nameController.text,
                          email: emailController.text,
                          phone: phoneController.text,
                          address: addressController.text);
                    }
                  },
                  text: S.of(context).save,
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
          ),
        );
      },
    );
  }
}
