import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/mazzoon_booking/widget/mazzoon_booking_body.dart';

class MazzoonBookingScreen extends StatefulWidget {
  const MazzoonBookingScreen({Key? key}) : super(key: key);

  @override
  State<MazzoonBookingScreen> createState() => _MazzoonBookingScreenState();
}

class _MazzoonBookingScreenState extends State<MazzoonBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(title: "حجز المأذون", context: context),
      body:  const MazzoonBookingBody(),
    );
  }
}
