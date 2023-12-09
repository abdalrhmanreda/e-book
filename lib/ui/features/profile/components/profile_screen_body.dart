import 'package:e_book/config/routes/routes_path.dart';
import 'package:e_book/core/components/custom_divider.dart';
import 'package:e_book/core/components/custom_navigatation.dart';
import 'package:e_book/core/constant/app_constant.dart';
import 'package:e_book/ui/features/authentication/controller/auth_cubit.dart';
import 'package:e_book/ui/features/profile/components/profile_image_and_edit_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../../../../generated/l10n.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<ListTile> items = [
      ListTile(
        leading: const Icon(IconlyBroken.notification),
        title: Text(S.of(context).notifications),
        trailing: const Icon(IconlyBroken.arrowRight2),
      ),
      ListTile(
        leading: const Icon(Icons.privacy_tip_outlined),
        title: Text(S.of(context).privacy),
        trailing: const Icon(IconlyBroken.arrowRight2),
      ),
      ListTile(
        leading: const Icon(Icons.translate),
        title: Text(S.of(context).language),
        trailing: const Icon(IconlyBroken.arrowRight2),
      ),
      ListTile(
        leading: const Icon(Icons.help_outline_sharp),
        title: Text(S.of(context).help),
        trailing: const Icon(IconlyBroken.arrowRight2),
      ),
      ListTile(
        leading: const Icon(IconlyBroken.send),
        title: Text(S.of(context).shareApp),
        trailing: const Icon(IconlyBroken.arrowRight2),
      ),
      ListTile(
        leading: const Icon(IconlyBroken.logout),
        title: Text(S.of(context).logout),
        trailing: const Icon(IconlyBroken.arrowRight2),
        onTap: () {
          AuthCubit.get(context).logout();
        },
      ),
    ];
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is LogoutSuccessState) {
          CustomNavigation.navigateByNamedTo(context, RoutePath.login);
        }
        // TODO: implement listener
      },
      builder: (context, state) {
        return Column(
          children: [
            buildProfileImageAndEditPart(context),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: myDivider(AppConstant.deviceWidth(context), 2),
            ),
            Column(
              children: items,
            ),
          ],
        );
      },
    );
  }
}
