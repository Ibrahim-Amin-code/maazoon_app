// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/wallet/widget/wallet_widget.dart';

import '../../../../../../core/widgets/custom_buttons_widget.dart';

class WalletBody extends StatelessWidget {
  const WalletBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      width: double.infinity,
      height: screenHeight(context),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(value: 3),
            const WalletBalance(),
            const VerticalSpace(value: 1),
            Text(
              'تاريخ المعاملات',
              style: headingStyle.copyWith(
                color: blackcolor,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            const VerticalSpace(value: 1),
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) => const TransactionHistory(),
                separatorBuilder: (context, index) =>
                    const VerticalSpace(value: 1.2),
                itemCount: 12),
            const VerticalSpace(value: 1),
          ],
        ),
      ),
    );
  }
}
