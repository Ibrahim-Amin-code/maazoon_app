// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/mazzoon_booking/mazzoon_booking.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../generator/locale_keys.dart';

class MazzoonDetailsBody extends StatelessWidget {
  const MazzoonDetailsBody({
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
            const VerticalSpace(value: 2),
            Container(
              height: screenHeight(context) * 0.28,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('asset/images/image 2.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            const VerticalSpace(value: 1),
            Text(
              'الشيخ - مشعل',
              style: headingStyle.copyWith(
                fontWeight: FontWeight.w500,
                color: textColor,
                fontSize: 23,
              ),
            ),
            const VerticalSpace(value: 0.5),
            Text(
              "رقم إعتماد (              )",
              style: headingStyle.copyWith(
                fontWeight: FontWeight.w400,
                color: textColor,
                fontSize: 14,
              ),
            ),
            const VerticalSpace(value: 0.5),
            Row(
              children: [
                Image.asset('asset/images/Routing.png', width: 14),
                Text(
                  ' 5 كيلو',
                  style: headingStyle.copyWith(
                      fontSize: 13,
                      color: colorGrey3,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.star_fill,
                  size: 10,
                  color: colorGrey3,
                ),
                Text(
                  ' 4.2',
                  style: headingStyle.copyWith(
                      fontSize: 15,
                      color: colorGrey3,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const VerticalSpace(value: 1),
            Text(
              'السلام عليكم، أنا الشيخ مشعل، أعمل في مجال الدعوة والإرشاد منذ عدة سنوات وخبرة بعقود النكاح، وأهتم بتطوير الذات وتحسين العلاقات الاجتماعية والأسرية. أتمنى أن تستفيدوا من خبرتي ونتشارك الفائدة عبر هذا التطبيق الرائع.',
              style: headingStyle.copyWith(
                  fontWeight: FontWeight.w500, color: textColo2, fontSize: 15),
            ),
            const VerticalSpace(value: 16),
            CustomGeneralButton(
              text: LocaleKeys.reservation_mazzoon.tr(),
              onTap: () => Navigator.push(
                context,
                PageTransition(
                  child: const MazzoonBookingScreen(),
                  type: PageTransitionType.leftToRight,
                ),
              ),
              color: buttonColor,
              borderRadius: 16,
              height: screenHeight(context) * 0.055,
              textColor: Colors.white,
              fontSize: 16,
            )
          ],
        ),
      ),
    );
  }
}
