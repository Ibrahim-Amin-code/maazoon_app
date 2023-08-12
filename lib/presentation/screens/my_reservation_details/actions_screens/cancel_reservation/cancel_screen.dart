import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/cancel_reservation/widget/cancel_body.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../generator/locale_keys.dart';

class CancelReservationScreen extends StatelessWidget {
  const CancelReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar:
          customAppbar(title: LocaleKeys.cancel_request.tr(), context: context),
      body: const CancelReservationBody(),
    );
  }
}
