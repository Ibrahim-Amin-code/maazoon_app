import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/rate_sheikh/widget/rate_body.dart';

import '../../../../../generator/locale_keys.dart';

class RateSheikhScreen extends StatelessWidget {
  const RateSheikhScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar:
          customAppbar(title: LocaleKeys.rate_mazzoon.tr(), context: context),
      body: RateBody(),
    );
  }
}
