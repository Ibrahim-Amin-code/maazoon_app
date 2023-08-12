import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:analog_clock/analog_clock.dart';
import 'package:maazoon_app/generator/locale_keys.dart';

class SelectWeddingTime extends StatefulWidget {
  const SelectWeddingTime({super.key});

  @override
  State<SelectWeddingTime> createState() => _SelectWeddingTimeState();
}

class _SelectWeddingTimeState extends State<SelectWeddingTime> {
  DateTime? selected;
  bool am = false;
  bool pm = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalSpace(value: 2),
        Text(
          translateString(
              "Choose marriage contract beginning", "اختر بداية عقد القران"),
          style: headingStyle.copyWith(
            fontSize: screenWidth(context) * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        const VerticalSpace(value: 4),
        Center(
          child: CircleAvatar(
            backgroundColor: buttonColor.withOpacity(0.3),
            radius: screenWidth(context) * 0.3,
            child: AnalogClock(
              isLive: true,
              hourHandColor: buttonColor,
              minuteHandColor: buttonColor,
              showSecondHand: false,
              numberColor: Colors.black87,
              showNumbers: true,
              showAllNumbers: true,
              textScaleFactor: 1.4,
              showTicks: true,
              showDigitalClock: false,
              datetime: DateTime.now(),
            ),
          ),
        ),
        const VerticalSpace(value: 4),
        Center(
          child: Container(
            width: screenWidth(context) * 0.5,
            height: screenHeight(context) * 0.06,
            color: Colors.transparent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      pm = true;
                      am = false;
                    });
                  },
                  child: Container(
                    width: screenWidth(context) * 0.5 / 2,
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: (prefs.getString("lang") == "en")
                          ? BorderRadius.only(
                              topLeft: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                              bottomLeft: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                            )
                          : BorderRadius.only(
                              topRight: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                              bottomRight: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                            ),
                      border: Border.all(
                          color: (pm) ? Colors.transparent : colorLightGrey),
                      color: (pm) ? buttonColor : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        LocaleKeys.pm.tr(),
                        style: headingStyle.copyWith(
                          fontSize: screenWidth(context) * 0.04,
                          color: (pm) ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      pm = false;
                      am = true;
                    });
                  },
                  child: Container(
                    width: screenWidth(context) * 0.5 / 2,
                    height: screenHeight(context) * 0.06,
                    decoration: BoxDecoration(
                      borderRadius: (prefs.getString("lang") == "en")
                          ? BorderRadius.only(
                              topRight: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                              bottomRight: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                            )
                          : BorderRadius.only(
                              topLeft: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                              bottomLeft: Radius.circular(
                                screenWidth(context) * 0.03,
                              ),
                            ),
                      border: Border.all(
                          color: (am) ? Colors.transparent : colorLightGrey),
                      color: (am) ? buttonColor : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        LocaleKeys.am.tr(),
                        style: headingStyle.copyWith(
                          fontSize: screenWidth(context) * 0.04,
                          color: (am) ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
