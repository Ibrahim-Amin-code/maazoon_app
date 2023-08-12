import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_drop_down.dart';
import 'package:maazoon_app/presentation/screens/layout/layout.dart';

import '../../../../../../core/router/router.dart';
import '../../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../core/widgets/space_widget.dart';
import '../../../../../../generator/locale_keys.dart';

// ignore: must_be_immutable
class ReportSheikhBody extends StatelessWidget {
  ReportSheikhBody({super.key});

  TextEditingController report = TextEditingController();

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
              LocaleKeys.resaon_report.tr(),
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 1.5),
            CustomDropDown(
              text: LocaleKeys.choose_reason.tr(),
            ),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
              label: LocaleKeys.report_details.tr(),
              hintColor: const Color(0xff858585),
              controller: report,
              borderSideColor: const Color(0xff858585).withOpacity(0.3),
              maxLines: 3,
            ),
            // const Spacer(),
            const VerticalSpace(value: 32),
            Center(
              child: SizedBox(
                width: screenWidth(context) * 0.55,
                child: Text(
                  LocaleKeys.sure_reaport.tr(),
                  textAlign: TextAlign.center,
                  style: headingStyle.copyWith(
                      color: const Color(0xff1A1A1A),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const VerticalSpace(value: 0.5),
            Center(
              child: Text(
                LocaleKeys.scan_not_back.tr(),
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
              text: LocaleKeys.send_report.tr(),
              onTap: () {
                dialogMsg(
                    context: context,
                    onTap: () =>
                        MagicRouter.navigateAndPopAll(const LayoutScreen()),
                    isCongrate: false,
                    subTitle: LocaleKeys.send_report_done.tr());
              },
              borderRadius: 16,
              iconImage: "asset/images/Flag 2.png",
            )
          ],
        ),
      ),
    );
  }
}
