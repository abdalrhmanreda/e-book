import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_book/config/colors/app_colors.dart';
import 'package:e_book/config/routes/routes_path.dart';
import 'package:e_book/core/components/custom_navigatation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../authentication/controller/auth_cubit.dart';

Padding buildProfileImageAndEditPart(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 25),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 36,
          child: CircleAvatar(
            radius: 35,
            backgroundImage: CachedNetworkImageProvider(
                AuthCubit.get(context).userModel!.profileImage!),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AuthCubit.get(context).userModel!.name!,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
            Text(
              AuthCubit.get(context).userModel!.email!,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 16.sp),
            ),
          ],
        ),
        IconButton(
          onPressed: () {
            CustomNavigation.navigateByNamedTo(context, RoutePath.editProfile);
          },
          icon: const Icon(
            IconlyBroken.editSquare,
            color: Color(AppColors.kPrimaryColor),
            size: 28,
          ),
        ),
      ],
    ),
  );
}
