import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/edit_reservation/widget/edit_body.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../generator/locale_keys.dart';

class EditReservationScreen extends StatelessWidget {
  const EditReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar:
          customAppbar(title: LocaleKeys.edit_request.tr(), context: context),
      body: EditReservationBody(),
    );
  }
}
