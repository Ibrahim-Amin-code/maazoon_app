import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/switch_sheikh/widget/switch_sheikh_body.dart';

class SwitchSheikhScreen extends StatelessWidget {
  const SwitchSheikhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(title: "استبدال المأذون", context: context),
      body: const SwitchSheikhBody(),
    );
  }
}
