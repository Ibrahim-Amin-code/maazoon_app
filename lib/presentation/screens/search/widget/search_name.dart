import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/search/widget/search_widget.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/custom_drop_down.dart';
import '../../../../core/widgets/space_widget.dart';
import '../../home/widget/home_widgets.dart';

class SearchByName extends StatefulWidget {
  const SearchByName({super.key});

  @override
  State<SearchByName> createState() => _SearchByNameState();
}

class _SearchByNameState extends State<SearchByName> {
  bool search = false;
  TextEditingController? searchController;
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
                  height: screenHeight(context) * 0.65,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.center,
                      colors: [
                        gradColor.withOpacity(0.4),
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(screenWidth(context) * 0.075),
                        topRight:
                            Radius.circular(screenWidth(context) * 0.075)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child:
                              Image.asset('asset/images/Rectangle 40144.png')),
                      const VerticalSpace(value: 1),
                      expansionTileFittler(name: "تصفية حسب المكان", children: [
                        SfSlider(
                          min: 1.0,
                          max: 5.0,
                          value: _value,
                          interval: 1,
                          showTicks: true,
                          //
                          showLabels: true,
                          activeColor: MazzoonColor,
                          inactiveColor: MazzoonColor.withOpacity(0.5),

                          // enableTooltip: true,
                          // minorTicksPerInterval: 1,
                          onChanged: (dynamic value) {
                            setState(() {
                              _value = value;
                            });
                          },
                        ),
                        const VerticalSpace(value: 0.6),
                        CustomDropDown(
                          text: " البلد",
                          borderColor: verticalDivider1,
                          fillColor: Colors.transparent,
                        ),
                        const VerticalSpace(value: 1.5),
                        CustomDropDown(
                          text: " المدينة",
                          borderColor: verticalDivider1,
                          fillColor: Colors.transparent,
                        ),
                        const VerticalSpace(value: 1.5),
                        CustomDropDown(
                          text: " الحي",
                          borderColor: verticalDivider1,
                          fillColor: Colors.transparent,
                        ),
                      ])
                    ],
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
                  color: textColo2, fontSize: 18, fontWeight: FontWeight.w700)),
          children: children);
}

  
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text("التصفية",
                      //         style: headingStyle.copyWith(
                      //             color: textColo2,
                      //             fontSize: 23,
                      //             fontWeight: FontWeight.w400)),
                      //     Icon(
                      //       Icons.keyboard_arrow_down,
                      //       size: screenWidth(context) * 0.075,
                      //     )
                      //   ],
                      // ),





 // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      // Text("تصفية حسب المكان",
                      //     style: headingStyle.copyWith(
                      //         color: textColo2,
                      //         fontSize: 18,
                      //         fontWeight: FontWeight.w700)),
                      // Icon(
                      //       Icons.keyboard_arrow_down,
                      //       size: screenWidth(context) * 0.075,
                      //     ),
                      //   ],
                      // ),
                      // const VerticalSpace(value: 0.6),
                      // CustomDropDown(
                      //   text: " البلد",
                      //   borderColor: verticalDivider1,
                      //   fillColor: Colors.transparent,
                      // ),
                      // const VerticalSpace(value: 1.5),
                      // CustomDropDown(
                      //   text: " المدينة",
                      //   borderColor: verticalDivider1,
                      //   fillColor: Colors.transparent,
                      // ),
                      // const VerticalSpace(value: 1.5),
                      // CustomDropDown(
                      //   text: " الحي",
                      //   borderColor: verticalDivider1,
                      //   fillColor: Colors.transparent,
                      // ),
                      // const VerticalSpace(value: 1.5),
                   