import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';

class WalletBalance extends StatelessWidget {



  const WalletBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(
              height: screenHeight(context) * 0.135,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xffEBEFEC),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight(context) * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth(context) * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الرصيد الحالي',
                          style: headingStyle.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: MazzoonColor.withOpacity(0.5)),
                        ),
                        Text(
                          '210 ر.س ',
                          style: headingStyle.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 19,
                              color: MazzoonColor),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CustomGeneralButton(
                      text: "سحب الاموال",
                      height: screenHeight(context) * 0.065,
                      color: buttonColor,
                      borderRadius: 16,
                      fontSize: 16,
                      textColor: Colors.white,
                      onTap: () {}),
                ],
              ),
            )
         
         ;
  }
}


class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
              height: screenHeight(context) * 0.065,
              padding:
                  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
              decoration: BoxDecoration(
                  color: const Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'طلب رقم 1341',
                    style: headingStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    "+210 ر.س",
                    style: headingStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: MazzoonColor),
                  ),
                ],
              ),
            )
        ;
  }
}