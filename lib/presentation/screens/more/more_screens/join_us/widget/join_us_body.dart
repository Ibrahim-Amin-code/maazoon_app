// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';

import '../../../../../../core/widgets/space_widget.dart';

class JoinUsBody extends StatelessWidget {
  JoinUsBody({
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
            'يمكنك الإنضمام الى قائمة المأذونين الآن!',
            style: headingStyle.copyWith(
                color: buttonColor, fontSize: 18, fontWeight: FontWeight.w700),
          ),
          Text(
            "حمل تطبيق المأذونين الآن لتبدأ استقبال الطلبات",
            style: headingStyle.copyWith(
                color: MazzoonColor, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          // const Spacer(),
          const VerticalSpace(value: 5),

          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.015),
            child: CustomGeneralButton(
              text: "تحميل التطبيق",
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
