import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/presentation/screens/recommend_mazzoon/widget/recommend_body.dart';

import '../../../../../core/constants/colors.dart';

class RecommendScreen extends StatefulWidget {
  const RecommendScreen({super.key});

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> {
  List<String> buttonTitle = [
    "تاكيد مكان",
    "تاكيد اليوم",
    "تاكيد الساعة",
    "",
  ];

  PageController? controller;
  int currentIndex = 0;
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(title: "رشح لى مأذون", context: context),
      bottomNavigationBar: (currentIndex != buttonTitle.length - 1)
          ? Container(
              color: Colors.white,
              width: double.infinity,
              height: screenHeight(context) * 0.1,
              padding: EdgeInsets.symmetric(
                vertical: screenHeight(context) * 0.01,
                horizontal: screenWidth(context) * 0.01,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: screenWidth(context) * 0.45,
                    child: CustomGeneralButton(
                        text: "الرجوع",
                        textColor: Colors.black,
                        color: Colors.white,
                        borderColor: Colors.white,
                        onTap: () {
                          if (currentIndex != 0) {
                            setState(() {
                              currentIndex--;
                            });
                            controller!.animateToPage(currentIndex,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.fastLinearToSlowEaseIn);
                          } else {
                            setState(() {
                              currentIndex = currentIndex;
                            });
                            controller!.animateToPage(currentIndex,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.fastLinearToSlowEaseIn);
                          }
                        }),
                  ),
                  SizedBox(
                    width: screenWidth(context) * 0.45,
                    child: CustomGeneralButton(
                        text: buttonTitle[currentIndex],
                        textColor: Colors.white,
                        color: buttonColor,
                        onTap: () {
                          if (currentIndex != buttonTitle.length - 1) {
                            setState(() {
                              currentIndex++;
                            });
                            controller!.animateToPage(currentIndex,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.fastLinearToSlowEaseIn);
                          } else {
                            setState(() {
                              currentIndex = currentIndex;
                            });
                            controller!.animateToPage(currentIndex,
                                duration: const Duration(milliseconds: 1000),
                                curve: Curves.fastLinearToSlowEaseIn);
                          }
                        }),
                  ),
                ],
              ),
            )
          : const SizedBox(),
      body: RecommendBody(
        controller: controller!,
        index: currentIndex,
      ),
    );
  }
}
