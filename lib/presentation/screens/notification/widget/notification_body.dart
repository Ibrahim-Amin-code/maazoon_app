// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/notification/widget/notification_widget.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({
    super.key,
  });

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
              'الإشعارات',
              style: headingStyle.copyWith(
                color: textColo2,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            const VerticalSpace(value: 2),
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) => NotificationCard(
                    dividerColorCard: (index == 1 || index == 0)
                        ? verticalDivider1
                        : verticalDivider2,
                    title: (index == 1 && index == 0)
                        ? " تم قبول الطلب"
                        : " تم ارجاع مبلغ الحجز",
                    subTitle: (index == 1 && index == 0)
                        ? "تم رفض طلبكم من الشيخ مشعل بن عبدالعزيز الشثري"
                        : " تم ارجاع ملبلغ الحجز يمكنكم الان حجز مأذون جديد",
                    notificationCardCOlor: (index == 1 || index == 0)
                        ? notificationColor
                        : Colors.white),
                separatorBuilder: (context, index) =>
                    const VerticalSpace(value: 1.5),
                itemCount: 5),
            const VerticalSpace(value: 3),
          ],
        ),
      ),
    );
  }
}
