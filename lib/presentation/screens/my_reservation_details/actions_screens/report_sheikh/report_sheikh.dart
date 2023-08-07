import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/report_sheikh/widget/report_body.dart';

class ReportSheikhScreen extends StatelessWidget {
  const ReportSheikhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(title: "الإبلاغ عن المأذون", context: context),
      backgroundColor: MazzoonColor,
      body:  ReportSheikhBody(),
    );
  }
}
