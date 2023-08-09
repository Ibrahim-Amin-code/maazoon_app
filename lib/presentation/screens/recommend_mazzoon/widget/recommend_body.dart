import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/recommend_mazzoon/widget/select_place.dart';
import 'select_date.dart';
import 'select_maazon.dart';
import 'select_time.dart';
import 'timeline.dart';

class RecommendBody extends StatefulWidget {
  final PageController controller;
  final int index;
  const RecommendBody(
      {super.key, required this.controller, required this.index});

  @override
  State<RecommendBody> createState() => _RecommendBodyState();
}

class _RecommendBodyState extends State<RecommendBody> {
  List<Widget> bodyWidget = [
    SelectPlaceWidget(),
    const SelectWeddingDate(),
    const SelectWeddingTime(),
    const SelectMaazonItem(),
  ];

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
        padding: EdgeInsets.symmetric(
          vertical: screenHeight(context) * 0.02,
          horizontal: screenWidth(context) * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimeLinItemData(
              currentIndex: widget.index,
            ),
            SizedBox(
              height: screenHeight(context),
              child: PageView.builder(
                itemCount: bodyWidget.length,
                controller: widget.controller,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => bodyWidget[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
