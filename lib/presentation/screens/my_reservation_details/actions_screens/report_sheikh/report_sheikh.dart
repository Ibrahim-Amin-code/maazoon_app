import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/report_sheikh/widget/report_body.dart';

import '../../../../../generator/locale_keys.dart';

class ReportSheikhScreen extends StatelessWidget {
  const ReportSheikhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          customAppbar(title: LocaleKeys.report_mazzoon.tr(), context: context),
      backgroundColor: MazzoonColor,
      body: ReportSheikhBody(),
    );
  }
}
