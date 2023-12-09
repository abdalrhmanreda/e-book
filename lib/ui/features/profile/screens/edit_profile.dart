import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../components/edit_profile_body.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).profile),
        centerTitle: true,
      ),
      body: const EditProfileScreenBody(),
    );
  }
}
