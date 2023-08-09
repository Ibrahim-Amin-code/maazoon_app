import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import '../../../../core/constants/colors.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard(
      {super.key,
      required this.title,
      required this.dividerColorCard,
      required this.subTitle,
      required this.notificationCardCOlor});

  final String title;
  final String subTitle;
  final Color notificationCardCOlor; //
  final Color dividerColorCard; //

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.04,
          vertical: screenHeight(context) * 0.01),
      // height: screenHeight(context) * 0.18,
      decoration: BoxDecoration(
          color: notificationCardCOlor,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: const Color(0xffAEBDB1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            CircleAvatar(
              backgroundImage: const AssetImage('asset/images/image 2.png'),
              backgroundColor: MazzoonColor,
              radius: screenWidth(context) * 0.06,
            ),
            SizedBox(
              width: screenWidth(context) * 0.02,
            ),
            Text(
              title,
              style: headingStyle.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 14),
            ),
          ]),
          Row(
            children: [
              Image.asset(
                "asset/images/Rectangle 128.png",
                color: dividerColorCard,
              ),
              SizedBox(
                width: screenWidth(context) * 0.04,
              ),
              SizedBox(
                width: screenWidth(context) * 0.65,
                child: Text(
                  subTitle,
                  style: headingStyle.copyWith(
                      color: textColo2,
                      fontWeight: FontWeight.w400,
                      fontSize: 15),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "اليوم الساعة 9:22 ص",
                style: headingStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: textColor),
              ),
              Text(
                "التفاصيل",
                style: headingStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blueColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
