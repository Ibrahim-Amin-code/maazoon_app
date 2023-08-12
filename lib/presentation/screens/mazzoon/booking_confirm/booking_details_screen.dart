import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/generator/locale_keys.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/booking_confirm/widget/booking_detail_body.dart';

import '../../../../core/constants/colors.dart';

class BookingConfirmScreen extends StatefulWidget {
  const BookingConfirmScreen({super.key});

  @override
  State<BookingConfirmScreen> createState() => _BookingConfirmScreenState();
}

class _BookingConfirmScreenState extends State<BookingConfirmScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(
          title: LocaleKeys.reservation_confirm.tr(), context: context),
      body: const BookingConfirmBody(),
    );
  }
}
