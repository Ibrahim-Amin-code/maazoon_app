import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/presentation/screens/home/widget/home_widgets.dart';
import 'package:maazoon_app/presentation/screens/search/widget/map_search.dart';
import 'package:maazoon_app/presentation/screens/search/widget/search_name.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/space_widget.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({
    super.key,
  });

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  bool search = false;

  TextEditingController? searchController;
  List<String> titles = ['ليستة', 'الخريطة'];
  int currentIndex = 0;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(value: 2),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth(context) * 0.01,
              ),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight(context) * 0.01,
                    horizontal: screenWidth(context) * 0.01),
                decoration: BoxDecoration(
                  color: const Color(0xff34593B).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: List.generate(
                      titles.length,
                      (index) => buildOptions(
                            index: index,
                          )),
                ),
              ),
            ),
            (currentIndex == 0)
                ? const SearchByName()
                : Stack(
                    children: [
                      const MapSearchItem(),
                      Padding(
                        padding:
                            EdgeInsets.only(top: screenHeight(context) * 0.57),
                        child: Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                              horizontal: screenWidth(context) * 0.05,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SheikhMazzoonCard(),
                                const VerticalSpace(value: 2),
                                Center(
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: screenHeight(context) * 0.07,
                                    child: CustomGeneralButton(
                                      text: "المزيد",
                                      textColor: Colors.white,
                                      color: buttonColor,
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildOptions({
    required int index,
  }) {
    return AnimatedContainer(
      width: screenWidth(context) * 0.46,
      height: screenHeight(context) * 0.06,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: currentIndex == index
            ? const Color(0xff34593B).withOpacity(0.9)
            : Colors.transparent,
      ),
      duration: const Duration(milliseconds: 200),
      child: InkWell(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Center(
              child: Text(
            titles[index],
            style: headingStyle.copyWith(
                fontSize: 14,
                color: currentIndex == index ? Colors.white : textColo2,
                fontWeight: FontWeight.w500),
          ))),
    );
  }
}
