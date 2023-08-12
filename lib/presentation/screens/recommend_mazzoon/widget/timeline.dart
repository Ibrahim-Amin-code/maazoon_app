import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../../generator/locale_keys.dart';

class TimeLinItemData extends StatefulWidget {
  final int currentIndex;
  const TimeLinItemData({super.key, required this.currentIndex});

  @override
  State<TimeLinItemData> createState() => _TimeLinItemDataState();
}

class _TimeLinItemDataState extends State<TimeLinItemData> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: screenHeight(context) * 0.13,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TimelineTile(
              isLast: (prefs.getString("lang") == "en") ? false : true,
              isFirst: (prefs.getString("lang") == "en") ? true : false,
              alignment: TimelineAlign.center,
              axis: TimelineAxis.horizontal,
              lineXY: .1,
              afterLineStyle: LineStyle(
                color: (widget.currentIndex != 0)
                    ? MazzoonColor
                    : Colors.grey.withOpacity(0.3),
              ),
              beforeLineStyle: LineStyle(
                color: (widget.currentIndex != 0)
                    ? MazzoonColor
                    : Colors.grey.withOpacity(0.3),
              ),
              indicatorStyle: IndicatorStyle(
                width: 30,
                height: 30,
                indicator: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        (widget.currentIndex == 0) ? buttonColor : MazzoonColor,
                  ),
                  child: Image.asset(
                    "asset/images/Map Point.png",
                    fit: BoxFit.scaleDown,
                    color: Colors.white,
                  ),
                ),
                color: Colors.white,
              ),
              endChild: Text(
                LocaleKeys.place.tr(),
                style: headingStyle.copyWith(
                  fontSize: screenWidth(context) * 0.04,
                  color: Colors.black87,
                ),
              ),
              hasIndicator: true,
            ),
            TimelineTile(
              isLast: false,
              isFirst: false,
              alignment: TimelineAlign.center,
              axis: TimelineAxis.horizontal,
              lineXY: .1,
              afterLineStyle: LineStyle(
                color: (widget.currentIndex == 3 ||
                        widget.currentIndex == 4 ||
                        widget.currentIndex == 2)
                    ? MazzoonColor
                    : Colors.grey.withOpacity(0.3),
              ),
              beforeLineStyle: LineStyle(
                color: (widget.currentIndex == 3 ||
                        widget.currentIndex == 4 ||
                        widget.currentIndex == 2)
                    ? MazzoonColor
                    : Colors.grey.withOpacity(0.3),
              ),
              indicatorStyle: IndicatorStyle(
                width: 30,
                height: 30,
                indicator: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (widget.currentIndex == 1)
                        ? buttonColor
                        : (widget.currentIndex == 1 ||
                                widget.currentIndex == 3 ||
                                widget.currentIndex == 4 ||
                                widget.currentIndex == 2)
                            ? MazzoonColor
                            : Colors.grey[100],
                  ),
                  child: Image.asset(
                    "asset/images/Calendar Minimalistic.png",
                    fit: BoxFit.scaleDown,
                    color: (widget.currentIndex != 0)
                        ? Colors.white
                        : Colors.black38,
                  ),
                ),
                color: Colors.white,
              ),
              endChild: Text(
                LocaleKeys.day.tr(),
                style: headingStyle.copyWith(
                  fontSize: screenWidth(context) * 0.04,
                  color: Colors.black87,
                ),
              ),
              hasIndicator: true,
            ),
            TimelineTile(
              isLast: false,
              isFirst: false,
              alignment: TimelineAlign.center,
              axis: TimelineAxis.horizontal,
              lineXY: .1,
              afterLineStyle: LineStyle(
                color: (widget.currentIndex == 2 ||
                        widget.currentIndex == 3 ||
                        widget.currentIndex == 4)
                    ? MazzoonColor
                    : Colors.grey.withOpacity(0.3),
              ),
              beforeLineStyle: LineStyle(
                color: (widget.currentIndex == 2 ||
                        widget.currentIndex == 3 ||
                        widget.currentIndex == 4)
                    ? MazzoonColor
                    : Colors.grey.withOpacity(0.3),
              ),
              indicatorStyle: IndicatorStyle(
                width: 30,
                height: 30,
                indicator: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (widget.currentIndex == 2)
                        ? buttonColor
                        : (widget.currentIndex == 3 || widget.currentIndex == 4)
                            ? MazzoonColor
                            : Colors.grey[100],
                  ),
                  child: Image.asset(
                    "asset/images/Clock Circle.png",
                    fit: BoxFit.scaleDown,
                    color: (widget.currentIndex == 2 ||
                            widget.currentIndex == 3 ||
                            widget.currentIndex == 4)
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
                color: Colors.white,
              ),
              endChild: Text(
                LocaleKeys.watch.tr(),
                style: headingStyle.copyWith(
                  fontSize: screenWidth(context) * 0.04,
                  color: Colors.black87,
                ),
              ),
              hasIndicator: true,
            ),
            TimelineTile(
              isLast: (prefs.getString("lang") == "en") ? true : false,
              isFirst: (prefs.getString("lang") == "en") ? false : true,
              alignment: TimelineAlign.center,
              axis: TimelineAxis.horizontal,
              lineXY: .1,
              beforeLineStyle: LineStyle(
                color: (widget.currentIndex == 3)
                    ? MazzoonColor
                    : Colors.grey.withOpacity(0.3),
              ),
              indicatorStyle: IndicatorStyle(
                width: 30,
                height: 30,
                indicator: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (widget.currentIndex == 3)
                        ? buttonColor
                        : Colors.grey[100],
                  ),
                  child: Image.asset(
                    "asset/images/User Rounded.png",
                    fit: BoxFit.scaleDown,
                    color: (widget.currentIndex == 3)
                        ? Colors.white
                        : Colors.black38,
                  ),
                ),
                color: Colors.white,
              ),
              endChild: Text(
                LocaleKeys.mazzoon.tr(),
                style: headingStyle.copyWith(
                  fontSize: screenWidth(context) * 0.04,
                  color: Colors.black87,
                ),
              ),
              hasIndicator: true,
            ),
          ],
        ),
      ),
    );
  }
}
