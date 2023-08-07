import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/widget/details_body.dart';

class ReservationDetailsScreen extends StatelessWidget {
  final int index;

  const ReservationDetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(title: 'تفاصيل الحجز', context: context),
      body: ReservationDetailsBody(index: index),
    );
  }
}
