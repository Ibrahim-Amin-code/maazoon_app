import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/mazzoon_details/widget/mazzoon_details_body.dart';

import '../../../../generator/locale_keys.dart';

class MazzoonDetailsScreen extends StatefulWidget {
  const MazzoonDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MazzoonDetailsScreen> createState() => _MazzoonDetailsScreenState();
}

class _MazzoonDetailsScreenState extends State<MazzoonDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(
          title: LocaleKeys.legitimate_mazzoon.tr(), context: context),
      body: const MazzoonDetailsBody(),
    );
  }
}
