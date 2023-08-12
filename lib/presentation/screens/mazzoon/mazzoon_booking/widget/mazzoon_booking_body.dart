import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/booking_confirm/booking_details_screen.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/mazzoon_booking/widget/payment.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../generator/locale_keys.dart';
import '../../../my_reservation_details/actions_screens/edit_reservation/widget/edit_reservation_wigets.dart';

class MazzoonBookingBody extends StatefulWidget {
  const MazzoonBookingBody({
    super.key,
  });

  @override
  State<MazzoonBookingBody> createState() => _MazzoonBookingBodyState();
}

class _MazzoonBookingBodyState extends State<MazzoonBookingBody> {
  TextEditingController marriageNumber = TextEditingController();
  TextEditingController choosePlace = TextEditingController();
  TextEditingController dayQuran = TextEditingController();
  TextEditingController payToMazzoon = TextEditingController();

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
            Text(
              LocaleKeys.marriage_number.tr(),
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              inputType: TextInputType.number,
              controller: marriageNumber,
              label: LocaleKeys.num_ministry_of_Justice.tr(),
              borderSideColor2: verticalDivider1,
            ),
            const VerticalSpace(value: 1.5),
            Text(
              LocaleKeys.choose_place.tr(),
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              inputType: TextInputType.name,
              controller: choosePlace,
              label: translateString("Searching for place", "البحث عن مكان"),
              borderSideColor2: verticalDivider1,
              suffix: Image.asset('asset/images/Icon (6).png'),
            ),
            const VerticalSpace(value: 1.5),
            Text(
              translateString("The wedding day", "يوم عقد القران"),
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              suffix: Image.asset('asset/images/Calendar.png'),
              inputType: TextInputType.datetime,
              controller: dayQuran,
              label: LocaleKeys.choose_day.tr(),
              borderSideColor2: verticalDivider1,
            ),
            const VerticalSpace(value: 1),
            Text(
              LocaleKeys.choose_time.tr(),
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 1),
            const TimesChoose(),
            const VerticalSpace(value: 1.5),
            Text(
              LocaleKeys.pay_to_mazzoon.tr(),
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
              inputType: TextInputType.number,
              controller: payToMazzoon,
              label: LocaleKeys.enter_amount.tr(),
              borderSideColor2: verticalDivider1,
            ),
            const VerticalSpace(value: 1),
            Text(
              LocaleKeys.payment_method.tr(),
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 1),
            const PaymentMethods(),
            Text(
              LocaleKeys.wallet.tr(),
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 1),
            const PayWallect(),
            const VerticalSpace(value: 2),
            CustomGeneralButton(
                borderRadius: 16,
                color: buttonColor,
                height: screenHeight(context) * 0.065,
                fontSize: 16,
                textColor: Colors.white,
                text: LocaleKeys.reservation_confirm.tr(),
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                        child: const BookingConfirmScreen(),
                        type: PageTransitionType.leftToRight,
                      ));
                }),
            const VerticalSpace(value: 2.5),
          ],
        ),
      ),
    );
  }
}
