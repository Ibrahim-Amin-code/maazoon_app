import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/generator/locale_keys.dart';
import 'package:maazoon_app/presentation/screens/my_reservation/widget/reservation_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../../my_reservation_details/details_screen.dart';

class MyResrvationBody extends StatefulWidget {
  const MyResrvationBody({
    super.key,
  });

  @override
  State<MyResrvationBody> createState() => _MyResrvationBodyState();
}

class _MyResrvationBodyState extends State<MyResrvationBody> {
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
                      Navigator.push(
                        context,
                        PageTransition(
                          child: ReservationDetailsScreen(
                            index: index,
                          ),
                          type: PageTransitionType.leftToRight,
                        ),
                      );
                    },
                    statusTitle: (index == 0)
                        ? LocaleKeys.offer_accepted.tr()
                        : (index == 1)
                            ? LocaleKeys.wait_accepted.tr()
                            : (index == 2)
                                ? LocaleKeys.apologized_not_attending.tr() //
                                : LocaleKeys.the_request_done.tr(), //
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
