import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/switch_sheikh/widget/switch_sheikh_body.dart';

import '../../../../../generator/locale_keys.dart';

class SwitchSheikhScreen extends StatelessWidget {
  const SwitchSheikhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar:
          customAppbar(title: LocaleKeys.switch_mazzoon.tr(), context: context),
      body: const SwitchSheikhBody(),
    );
  }
}
