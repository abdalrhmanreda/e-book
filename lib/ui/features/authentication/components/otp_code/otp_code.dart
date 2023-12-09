import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/api/api_constant.dart';

class OtpCode extends StatelessWidget {
  OtpCode({super.key});
  var pin1Controller = TextEditingController();
  var pin2Controller = TextEditingController();
  var pin3Controller = TextEditingController();
  var pin4Controller = TextEditingController();
  var pin5Controller = TextEditingController();
  var pin6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 67.h,
          width: 45.w,
          child: TextFormField(
            controller: pin1Controller,
            keyboardType: TextInputType.number,
            onSaved: (pin1) {},
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            validator: (value) {
              if (value!.isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            decoration: InputDecoration(
              hintText: "0",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 67.h,
          width: 45.w,
          child: TextFormField(
            controller: pin2Controller,
            keyboardType: TextInputType.number,
            onSaved: (pin1) {},
            validator: (value) {
              if (value!.isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            decoration: InputDecoration(
              hintText: "0",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 67.h,
          width: 45.w,
          child: TextFormField(
            controller: pin3Controller,
            keyboardType: TextInputType.number,
            onSaved: (pin1) {},
            validator: (value) {
              if (value!.isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            decoration: InputDecoration(
              hintText: "0",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 67.h,
          width: 45.w,
          child: TextFormField(
            controller: pin4Controller,
            keyboardType: TextInputType.number,
            onSaved: (pin1) {},
            validator: (value) {
              if (value!.isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            decoration: InputDecoration(
              hintText: "0",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 67.h,
          width: 45.w,
          child: TextFormField(
            controller: pin5Controller,
            keyboardType: TextInputType.number,
            onSaved: (pin1) {},
            validator: (value) {
              if (value!.isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            },
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            decoration: InputDecoration(
              hintText: "0",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 67.h,
          width: 45.w,
          child: TextFormField(
            controller: pin6Controller,
            keyboardType: TextInputType.number,
            onSaved: (pin1) {},
            onChanged: (value) {
              if (value.length == 1) {
                FocusScope.of(context).unfocus();
              }
              ApiConstant.code = pin1Controller.text +
                  pin2Controller.text +
                  pin3Controller.text +
                  pin4Controller.text +
                  pin5Controller.text +
                  pin6Controller.text;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            decoration: InputDecoration(
              hintText: "0",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
