import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/profile/edit_profile/widget/edit_profile_body.dart';

import '../../../../core/constants/constants.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppbar(title: 'Edit Profile', context: context, atHome: false),
      body: const EditProfileBody(),
    );
  }
}
