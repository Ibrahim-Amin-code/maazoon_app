import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/widgets/custom_drop_down.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/home/widget/home_widgets.dart';
import 'package:maazoon_app/presentation/screens/search/widget/search_widget.dart';

import '../../../../core/constants/constants.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  bool search = false;

  TextEditingController? searchController;
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
                          topLeft:
                              Radius.circular(screenWidth(context) * 0.075),
                          topRight:
                              Radius.circular(screenWidth(context) * 0.075)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Image.asset(
                                'asset/images/Rectangle 40144.png')),
                        const VerticalSpace(value: 1),
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
                        const VerticalSpace(value: 0.8),
                        ExpansionTile(
                            iconColor: textColo2,
                            title: Text("تصفية حسب المكان",
                                style: headingStyle.copyWith(
                                    color: textColo2,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                            children: [
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
      ),
    );
  }
}
