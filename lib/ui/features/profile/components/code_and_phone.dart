import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/custom_text_form_feild.dart';

Row buildCountryCodeAndPhone(TextEditingController phoneController) {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.all(5),
        height: 47.h,
        width: 95.w,
        decoration: BoxDecoration(
          color: const Color(AppColors.kLoginWithGoogleColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const CountryCodePicker(
          onChanged: print,
          initialSelection: 'EG',
          favorite: ['+20', 'EG'],
          showOnlyCountryWhenClosed: false,
          alignLeft: false,
          showFlag: true,
        ),
      ),
      Expanded(
        child: Container(
          margin: const EdgeInsets.all(5),
          height: 47.h,
          decoration: BoxDecoration(
            color: const Color(AppColors.kLoginWithGoogleColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: CustomTextFormField(
            controller: phoneController,
            isPassword: false,
            maxLine: 1,
            type: TextInputType.phone,
            border: InputBorder.none,
            label: 'phone',
          ),
        ),
      ),
    ],
  );
}
