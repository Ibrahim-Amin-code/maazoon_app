import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/cancel_reservation/widget/cancel_body.dart';

import '../../../../../core/constants/colors.dart';

class CancelReservationScreen extends StatelessWidget {
  const CancelReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(title: "الغاء الطلب", context: context),
      body: const CancelReservationBody(),
    );
  }
}
