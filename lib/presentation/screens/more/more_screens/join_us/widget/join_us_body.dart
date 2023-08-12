// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/generator/locale_keys.dart';

import '../../../../../../core/widgets/space_widget.dart';

class JoinUsBody extends StatelessWidget {
  const JoinUsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: screenHeight(context) * 0.44,
            width: double.infinity,
            // margin: EdgeInsets.only(bottom: 50),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'asset/images/Frame 127 (1).png',
                    ),
                    fit: BoxFit.contain)),
          ),
          const VerticalSpace(value: 10),
          Text(
            LocaleKeys.join_now.tr(),
            style: headingStyle.copyWith(
                color: buttonColor, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            LocaleKeys.download_app.tr(),
            textAlign: TextAlign.center,
            style: headingStyle.copyWith(
                color: MazzoonColor, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          // const Spacer(),
          const VerticalSpace(value: 5),

          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.015),
            child: CustomGeneralButton(
              text: LocaleKeys.download_app1.tr(),
              onTap: () {},
              borderRadius: 15,
              color: buttonColor,
              textColor: Colors.white,
              fontSize: 16,
              height: screenHeight(context) * 0.065,
            ),
          ),
          const VerticalSpace(value: 5),
        ],
      ),
    );
  }
}
