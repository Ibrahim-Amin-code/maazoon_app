import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/booking_confirm/booking_details_screen.dart';
import 'package:maazoon_app/presentation/screens/mazzoon/mazzoon_booking/widget/payment.dart';
import 'package:page_transition/page_transition.dart';

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
              "رقم طلب الزواج",
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              inputType: TextInputType.number,
              controller: marriageNumber,
              label: "ادخل الرقم المزود من وزارة العدل",
              borderSideColor2: verticalDivider1,
            ),
            const VerticalSpace(value: 1.5),
            Text(
              "اختر المكان",
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              inputType: TextInputType.name,
              controller: choosePlace,
              label: "البحث عن مكان",
              borderSideColor2: verticalDivider1,
              suffix: Image.asset('asset/images/Icon (6).png'),
            ),
            const VerticalSpace(value: 1.5),
            Text(
              "يوم عقد القران",
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              suffix: Image.asset('asset/images/Calendar.png'),
              inputType: TextInputType.datetime,
              controller: dayQuran,
              label: "اختر يوم",
              borderSideColor2: verticalDivider1,
            ),
            const VerticalSpace(value: 1),
            Text(
              "اختر الوقت",
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 1),
            const TimesChoose(),
            const VerticalSpace(value: 1.5),
            Text(
              "ادفع للمأذون (اختيارى)",
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
              inputType: TextInputType.number,
              controller: payToMazzoon,
              label: "ادخل مبلغ من 500 ر.س الى 2500 ر.س",
              borderSideColor2: verticalDivider1,
            ),
            const VerticalSpace(value: 1),
            Text(
              "طريقة الدفع",
              style: headingStyle.copyWith(
                  color: textColo2, fontWeight: FontWeight.w700, fontSize: 18),
            ),
            const VerticalSpace(value: 1),
            const PaymentMethods(),
            Text(
              "المحفظة",
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
                text: "تأكيد الحجز",
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
