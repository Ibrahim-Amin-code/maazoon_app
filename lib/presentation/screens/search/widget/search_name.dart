import 'package:analog_clock/analog_clock.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/presentation/screens/search/widget/search_widget.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/custom_drop_down.dart';
import '../../../../core/widgets/space_widget.dart';
import '../../../../generator/locale_keys.dart';
import '../../home/widget/home_widgets.dart';

class SearchByName extends StatefulWidget {
  const SearchByName({super.key});

  @override
  State<SearchByName> createState() => _SearchByNameState();
}

class _SearchByNameState extends State<SearchByName> {
  bool search = false;
  TextEditingController? searchController;
  DateTime? selected;
  bool am = false;
  bool pm = false;
  // SfRangeValues _values = const SfRangeValues(1, 0);
  double _value = 5.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.03),
      child: Column(
        children: [
          const VerticalSpace(value: 2),
          SearchWidget(
            controller: searchController,
            filterOnTap: () {
              homeBottomSheet(
                context: context,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: screenHeight(context) * 0.02),
                  height: screenHeight(context) * 0.7,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        gradColor.withOpacity(0.3),
                        gradColor.withOpacity(0.1),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenWidth(context) * 0.075),
                        topRight:
                            Radius.circular(screenWidth(context) * 0.075)),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Image.asset(
                                'asset/images/Rectangle 40144.png')),
                        const VerticalSpace(value: 1),
                        expansionTileFittler(
                            name: " ${LocaleKeys.filter.tr()} ", children: []),
                        expansionTileFittler(
                            name: LocaleKeys.filter_by_rate.tr(),
                            children: [
                              SfSlider(
                                min: 1.0,
                                max: 5.0,
                                value: _value,
                                interval: 1,
                                showTicks: true,
                                showLabels: true,
                                activeColor: MazzoonColor,
                                inactiveColor: MazzoonColor.withOpacity(0.5),
                                onChanged: (dynamic value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                              ),
                              const VerticalSpace(value: 2),
                            ]),
                        expansionTileFittler(
                            name: LocaleKeys.filter_by_place.tr(),
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth(context) * 0.04),
                                child: Column(
                                  children: [
                                    CustomDropDown(
                                      text: " ${LocaleKeys.conutry.tr()}",
                                      borderColor: verticalDivider1,
                                      fillColor: Colors.transparent,
                                    ),
                                    const VerticalSpace(value: 1.5),
                                    CustomDropDown(
                                      text: " ${LocaleKeys.city.tr()}",
                                      borderColor: verticalDivider1,
                                      fillColor: Colors.transparent,
                                    ),
                                    const VerticalSpace(value: 1.5),
                                    CustomDropDown(
                                      text: " ${LocaleKeys.street.tr()}",
                                      borderColor: verticalDivider1,
                                      fillColor: Colors.transparent,
                                    ),
                                    const VerticalSpace(value: 2),
                                  ],
                                ),
                              ),
                            ]),
                        expansionTileFittler(
                            name: LocaleKeys.filter_by_day.tr(),
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth(context) * 0.04,
                                  // vertical: screenHeight(context) * 0.02
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: buttonColor.withOpacity(0.3),
                                        borderRadius: BorderRadius.circular(
                                          screenWidth(context) * 0.03,
                                        ),
                                      ),
                                      child: CalendarDatePicker2(
                                        config: CalendarDatePicker2Config(
                                          calendarType:
                                              CalendarDatePicker2Type.single,
                                        ),
                                        value: [
                                          DateTime.now(),
                                        ],
                                        displayedMonthDate: DateTime.now(),
                                        onValueChanged: (dates) {},
                                      ),
                                    ),
                                    const VerticalSpace(value: 2),
                                  ],
                                ),
                              ),
                            ]),
                        expansionTileFittler(
                            name: LocaleKeys.filter_by_time.tr(),
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth(context) * 0.04,
                                  // vertical: screenHeight(context) * 0.02
                                ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: screenHeight(context) * 0.02),
                                  color: buttonColor.withOpacity(0.2),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: screenWidth(context) * 0.6,
                                        height: screenHeight(context) * 0.25,
                                        decoration: BoxDecoration(
                                          color: buttonColor.withOpacity(0.3),
                                          shape: BoxShape.circle,
                                        ),
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
                                      const VerticalSpace(value: 1),
                                      Center(
                                        child: Container(
                                          width: screenWidth(context) * 0.5,
                                          height: screenHeight(context) * 0.05,
                                          color: Colors.transparent,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    pm = true;
                                                    am = false;
                                                  });
                                                },
                                                child: Container(
                                                  width: screenWidth(context) *
                                                      0.5 /
                                                      2,
                                                  height:
                                                      screenHeight(context) *
                                                          0.08,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight: Radius.circular(
                                                        screenWidth(context) *
                                                            0.03,
                                                      ),
                                                      bottomRight:
                                                          Radius.circular(
                                                        screenWidth(context) *
                                                            0.03,
                                                      ),
                                                    ),
                                                    border: Border.all(
                                                        color: (pm)
                                                            ? Colors.transparent
                                                            : colorLightGrey),
                                                    color: (pm)
                                                        ? buttonColor
                                                        : Colors.transparent,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      LocaleKeys.pm.tr(),
                                                      style:
                                                          headingStyle.copyWith(
                                                        fontSize: screenWidth(
                                                                context) *
                                                            0.04,
                                                        color: (pm)
                                                            ? Colors.white
                                                            : Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w700,
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
                                                  width: screenWidth(context) *
                                                      0.5 /
                                                      2,
                                                  height:
                                                      screenHeight(context) *
                                                          0.08,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft: Radius.circular(
                                                        screenWidth(context) *
                                                            0.03,
                                                      ),
                                                      bottomLeft:
                                                          Radius.circular(
                                                        screenWidth(context) *
                                                            0.03,
                                                      ),
                                                    ),
                                                    border: Border.all(
                                                        color: (am)
                                                            ? Colors.transparent
                                                            : colorLightGrey),
                                                    color: (am)
                                                        ? buttonColor
                                                        : Colors.transparent,
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      LocaleKeys.am.tr(),
                                                      style:
                                                          headingStyle.copyWith(
                                                        fontSize: screenWidth(
                                                                context) *
                                                            0.04,
                                                        color: (am)
                                                            ? Colors.white
                                                            : Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const VerticalSpace(value: 1),
                                    ],
                                  ),
                                ),
                              ),
                            ]),
                        const VerticalSpace(value: 18),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth(context) * 0.03),
                          child: CustomGeneralButton(
                            text: LocaleKeys.filter_result.tr(),
                            onTap: () {},
                            color: buttonColor,
                            height: screenHeight(context) * 0.065,
                            textColor: Colors.white,
                            fontSize: 16,
                            borderRadius: 15,
                          ),
                        ),
                        // const VerticalSpace(value: 2),
                      ],
                    ),
                  ),
                ),
              );
            },
            searchOnTap: () {},
          ),
          const VerticalSpace(value: 2),
          ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context, index) => const SheikhMazzoonCard(),
              separatorBuilder: (context, index) =>
                  const VerticalSpace(value: 1.5),
              itemCount: 8),
          const VerticalSpace(value: 2),
        ],
      ),
    );
  }

//
  Widget expansionTileFittler(
          {required String name, required List<Widget> children}) =>
      ExpansionTile(
          iconColor: textColo2,
          title: Text(name,
              style: headingStyle.copyWith(
                  color: textColo2.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.w700)),
          children: children);
}
