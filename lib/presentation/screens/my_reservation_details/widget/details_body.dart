import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/cancel_reservation/cancel_screen.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/edit_reservation/edit_reservation.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/rate_sheikh/rate_sheikh.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/report_sheikh/report_sheikh.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/switch_sheikh/switch_sheikh.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/widget/details_widgets.dart';

import '../../../../generator/locale_keys.dart';

class ReservationDetailsBody extends StatelessWidget {
  final int index;
  const ReservationDetailsBody({super.key, required this.index});

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
            ReservationDeatailsSheikhCard(
              onTap: () {},
              statusTitle: (index == 0)
                  ? LocaleKeys.offer_accepted.tr()
                  : (index == 1)
                      ? LocaleKeys.wait_accepted.tr()
                      : (index == 2)
                          ? LocaleKeys.apologized_not_attending.tr()
                          : LocaleKeys.the_request_done.tr(),
              iconImage: (index == 0)
                  ? "asset/images/Check Circle.png"
                  : (index == 1)
                      ? "asset/images/Stopwatch.png"
                      : (index == 2)
                          ? "asset/images/Danger Triangle.png"
                          : "asset/images/Like.png",
              statusColor: (index == 0)
                  ? MazzoonColor
                  : (index == 1)
                      ? textColor
                      : (index == 2)
                          ? colorRed
                          : brownColor,
            ),
            const VerticalSpace(value: 1),
            DetailsQuranDone(
                isFromDetails: false,
                isHight: true,
                title: translateString(
                    "The marriage contract place", 'مكان عقد القران'),
                subTitle:
                    "المملكة العربية السعودية، الدمام، حي الفيصلية، شارع الأمير نايف بن عبدالعزيز، العمارة رقم ٤٥، الشقة رقم ٦٧٨",
                imageIcon: "asset/images/Map Point.png"),
            const Divider(),
            const VerticalSpace(value: 0.1),
            DetailsQuranDone(
                isFromDetails: false,
                isHight: false,
                title: translateString(
                    "The marriage contract place", 'مكان عقد القران'),
                subTitle: "10 ذو القعدة 1444",
                imageIcon: "asset/images/Calendar.png"),
            const Divider(),
            const VerticalSpace(value: 0.1),
            DetailsQuranDone(
                isFromDetails: false,
                isHight: false,
                title:
                    translateString("The marriage contract time", 'وقت القران'),
                subTitle: "10:00 مساء",
                imageIcon: "asset/images/Clock Circle11.png"),
            (index == 0)
                ? const VerticalSpace(value: 10)
                : const VerticalSpace(value: 16),
            ActionButtonInReservationCard(
                onTap: () {
                  (index == 3)
                      ? MagicRouter.navigateTo(const ReportSheikhScreen())
                      : MagicRouter.navigateTo(const CancelReservationScreen());
                },
                title: (index == 3)
                    ? LocaleKeys.report_mazzoon.tr()
                    : LocaleKeys.cancel_request.tr(),
                iconImage: (index == 3)
                    ? "asset/images/Flag 2.png"
                    : "asset/images/Close Circle.png",
                borderColor: colorred,
                textColor: colorred),
            const VerticalSpace(value: 1.5),
            CustomGeneralButton(
              text: (index == 2)
                  ? LocaleKeys.switch_mazzoon.tr()
                  : (index == 3)
                      ? LocaleKeys.rate_mazzoon.tr()
                      : LocaleKeys.edit_request.tr(),
              height: screenHeight(context) * 0.06,
              iconImage: (index == 2)
                  ? "asset/images/Repeat.png"
                  : (index == 3)
                      ? "asset/images/Star.png"
                      : 'asset/images/Document Add.png',
              textColor: Colors.white,
              fontSize: 18,
              onTap: () {
                if (index == 2) {
                  MagicRouter.navigateTo(const SwitchSheikhScreen());
                } else if (index == 3) {
                  MagicRouter.navigateTo(const RateSheikhScreen());
                } else {
                  MagicRouter.navigateTo(const EditReservationScreen());
                }
              },
              color: buttonColor,
              borderRadius: 15,
            ),
          ],
        ),
      ),
    );
  }
}
