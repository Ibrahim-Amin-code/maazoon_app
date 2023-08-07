import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/auth/code/code.dart';

import '../../../../../../core/router/router.dart';
import '../../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../home/widget/home_widgets.dart';
import '../../../../layout/layout.dart';
import '../../../../mazzoon/mazzoon_details/mazzoon_details.dart';
import '../../../widget/details_widgets.dart';

class CancelReservationBody extends StatelessWidget {
  const CancelReservationBody({super.key});

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
            const VerticalSpace(value: 1.5),
            Text(
              "تفاصيل الطلب",
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 1.5),
            ReservationDeatailsSheikhCard(
                onTap: () {},
                statusTitle: "المأذون اعتذر عن الحضور",
                iconImage: 'asset/images/Danger Triangle.png',
                statusColor: colorRed),
            const VerticalSpace(value: 1.5),
            DetailsQuranDone(
                subTitleColor: colorGrey3,
                isFromDetails: true,
                isHight: true,
                title: 'مكان عقد القران',
                subTitle:
                    "المملكة العربية السعودية، الدمام، حي الفيصلية، شارع الأمير نايف بن عبدالعزيز، العمارة رقم ٤٥، الشقة رقم ٦٧٨",
                imageIcon: "asset/images/Map Point.png"),
            const VerticalSpace(value: 0.2),
            DetailsQuranDone(
                subTitleColor: colorGrey3,
                isFromDetails: true,
                isHight: false,
                title: "تاريخ عقد القران",
                subTitle: "10 ذو القعدة 1444",
                imageIcon: "asset/images/Calendar.png"),
            const VerticalSpace(value: 0.2),
            DetailsQuranDone(
                subTitleColor: colorGrey3,
                isFromDetails: true,
                isHight: false,
                title: "وقت القران",
                subTitle: "10:00 مساء",
                imageIcon: "asset/images/Clock Circle11.png"),
            const VerticalSpace(value: 1.5),
            Text(
              "الشيخ مشعل رشح لك بديل",
              textAlign: TextAlign.center,
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 0.5),
            SheikhMazzoonCard(
                onTap: () =>
                    MagicRouter.navigateTo(const MazzoonDetailsScreen())),
            // const VerticalSpace(value: 2.8),
            const VerticalSpace(value: 10),
            Center(
              child: Text(
                "هل انت متأكد من إلغاء الطلب؟",
                textAlign: TextAlign.center,
                style: headingStyle.copyWith(
                    color: const Color(0xff1A1A1A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Center(
              child: Text(
                "لا يمكن الرجوع بعد هذه الخطوة",
                textAlign: TextAlign.center,
                style: headingStyle.copyWith(
                    color: colorRed, fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            const VerticalSpace(value: 0.5),
            CustomGeneralButton(
              height: screenHeight(context) * 0.06,
              textColor: Colors.white,
              color: colorRed,
              text: "تأكيد الإلغاء",
              onTap: () {
                MagicRouter.navigateTo(CodeScreen(
                    titleAppBar: "رمز OTP",
                    buttonText: "تأكيد",
                    onTap: () {
                      return dialogMsg(
                          context: context,
                          onTap: () => MagicRouter.navigateAndPopAll(
                              const LayoutScreen()),
                          isCongrate: false,
                          subTitle:
                              "تم الغاء طلبكم بنجاح وسيتم رد رسوم التطبيق الى المحفظة الخاصة بكم قريبا");
                    }));
              },
              //** */
              borderRadius: 16,
              iconImage: "asset/images/Close Circle.png",
            )
          ],
        ),
      ),
    );
  }
}
