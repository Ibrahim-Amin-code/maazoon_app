import 'package:flutter/material.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';

class ReservationSheikhCard extends StatelessWidget {
  final String statusTitle;
  final String iconImage;
  final Color statusColor;
  final void Function() onTap;

  const ReservationSheikhCard(
      {super.key,
      required this.onTap,
      required this.statusTitle,
      required this.iconImage,
      required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: const Color(0xffE0E0E0),
            )),
        width: screenWidth(context) * 0.9,
        // height: screenHeight(context) * 0.15,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.symmetric(vertical: screenHeight(context) * 0.001),
              decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    statusTitle,
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: screenWidth(context) * 0.01,
                  ),
                  Image.asset(iconImage)
                ],
              ),
            ),
            const VerticalSpace(value: 1),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: screenWidth(context) * 0.22,
                  height: screenHeight(context) * 0.085,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                            'asset/images/Rectangle 40143.png',
                          ),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: screenWidth(context) * 0.01,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'الشيخ - مشعل',
                      style: headingStyle.copyWith(
                          color: textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'asset/images/Calendar.png',
                          width: 14,
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.01,
                        ),
                        Text(
                          '10 يناير',
                          style: headingStyle.copyWith(
                              color: textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'asset/images/Clock Circle11.png',
                          width: 14,
                        ),
                        SizedBox(
                          width: screenWidth(context) * 0.01,
                        ),
                        Text(
                          '10:00 مساء',
                          style: headingStyle.copyWith(
                              color: textColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
