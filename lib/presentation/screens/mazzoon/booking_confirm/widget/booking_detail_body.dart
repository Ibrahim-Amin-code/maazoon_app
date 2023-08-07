import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/presentation/screens/home/widget/home_widgets.dart';

import '../../../../../core/widgets/space_widget.dart';
import '../../../my_reservation_details/widget/details_widgets.dart';

class BookingConfirmBody extends StatefulWidget {
  const BookingConfirmBody({super.key});

  @override
  State<BookingConfirmBody> createState() => _BookingConfirmBodyState();
}

class _BookingConfirmBodyState extends State<BookingConfirmBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
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
              "تفاصيل الحجز",
              style: headingStyle.copyWith(
                  fontSize: 18, color: textColo2, fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 2),
            const SheikhMazzoonCard(),
            const VerticalSpace(value: 1),
            const DetailsQuranDone(
                isFromDetails: false,
                isHight: true,
                title: 'مكان عقد القران',
                subTitle:
                    "المملكة العربية السعودية، الدمام، حي الفيصلية، شارع الأمير نايف بن عبدالعزيز، العمارة رقم ٤٥، الشقة رقم ٦٧٨",
                imageIcon: "asset/images/Map Point.png"),
            const Divider(),
            const VerticalSpace(value: 0.1),
            const DetailsQuranDone(
                isFromDetails: false,
                isHight: false,
                title: "تاريخ عقد القران",
                subTitle: "10 ذو القعدة 1444",
                imageIcon: "asset/images/Calendar.png"),
            const Divider(),
            const VerticalSpace(value: 0.1),
            const DetailsQuranDone(
                isFromDetails: false,
                isHight: false,
                title: "وقت القران",
                subTitle: "10:00 مساء",
                imageIcon: "asset/images/Clock Circle11.png"),
            const VerticalSpace(value: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('asset/images/Banknote 2.png'),
                Text(
                  "50 ريال سعودي",
                  style: headingStyle.copyWith(
                      fontSize: 16,
                      color: blackcolor,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Center(
              child: Text(
                "هذا المبلغ رسوم الحجز عن طريق  التطبيق",
                style: headingStyle.copyWith(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const VerticalSpace(value: 1),
            CustomGeneralButton(
              text: "الدفع",
              onTap: () {},
              borderRadius: 15,
              color: buttonColor,
              textColor: Colors.white,
              height: screenHeight(context) * 0.065,
              fontSize: 16,
            )
          ],
        ),
      ),
    );
  }
}
