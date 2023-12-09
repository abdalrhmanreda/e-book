import 'package:e_book/ui/features/profile/components/profile_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../generated/l10n.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        titleTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 19.sp,
              fontWeight: FontWeight.w800,
            ),
        title: Text(S.of(context).profile),
      ),
      body: const ProfileScreenBody(),
    );
  }
}
