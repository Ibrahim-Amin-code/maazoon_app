import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';

class RecommendBody extends StatelessWidget {
  const RecommendBody({super.key});

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
    );
  }
}
