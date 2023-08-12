// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/core/widgets/rate_stars.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/layout/layout.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/widget/details_widgets.dart';

import '../../../../../../generator/locale_keys.dart';

class RateBody extends StatelessWidget {
  RateBody({
    super.key,
  });
  TextEditingController rate = TextEditingController();
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
              LocaleKeys.rate_mazzoon.tr(),
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 1.5),
            ReservationDeatailsSheikhCard(
                onTap: () {},
                statusTitle: LocaleKeys.request_accepted.tr(),
                iconImage: 'asset/images/Like.png',
                statusColor: buttonColor),
            const VerticalSpace(value: 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.rate_experience.tr(),
                  style: headingStyle.copyWith(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: screenWidth(context) * 0.03,
                ),
                rateStars(itemSize: 30, rate: false, rateNum: 0),
              ],
            ),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
              label: LocaleKeys.how_experience.tr(),
              controller: rate,
              maxLines: 4,
            ),
            // const Spacer(),
            const VerticalSpace(value: 27),
            CustomGeneralButton(
              height: screenHeight(context) * 0.06,
              textColor: Colors.white,
              color: buttonColor,
              text: LocaleKeys.rend_rate.tr(),
              onTap: () {
                dialogMsg(
                    context: context,
                    onTap: () =>
                        MagicRouter.navigateAndPopAll(const LayoutScreen()),
                    isCongrate: false,
                    subTitle: LocaleKeys.send_rate_done.tr());
              },
              borderRadius: 16,
            )
          ],
        ),
      ),
    );
  }
}
