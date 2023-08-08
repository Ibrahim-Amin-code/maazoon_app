import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/my_reservation/widget/reservation_widget.dart';

import '../../my_reservation_details/details_screen.dart';

class MyResrvationBody extends StatelessWidget {
  const MyResrvationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
      child: Column(
        children: [
          const VerticalSpace(value: 2),
          ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => ReservationSheikhCard(
                    onTap: () {
                      MagicRouter.navigateTo( ReservationDetailsScreen(index: index,));
                    },
                    statusTitle: (index == 0)
                        ? "تم قبول العرض"
                        : (index == 1)
                            ? "في انتظار موافقة المأذون"
                            : (index == 2)
                                ? "المأذون اعتذر عن الحضور"
                                : "تم تنفيذ الطلب",
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
              separatorBuilder: (context, index) =>
                  const VerticalSpace(value: 1),
              itemCount: 4)
        ],
      ),
    );
  }
}
