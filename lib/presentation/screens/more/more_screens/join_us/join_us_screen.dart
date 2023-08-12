import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/join_us/widget/join_us_body.dart';

import '../../../../../generator/locale_keys.dart';

class JoinUsScreen extends StatefulWidget {
  const JoinUsScreen({Key? key}) : super(key: key);

  @override
  State<JoinUsScreen> createState() => _JoinUsScreenState();
}

class _JoinUsScreenState extends State<JoinUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(title: LocaleKeys.join_now2.tr(), context: context),
      body: const JoinUsBody(),
    );
  }
}
