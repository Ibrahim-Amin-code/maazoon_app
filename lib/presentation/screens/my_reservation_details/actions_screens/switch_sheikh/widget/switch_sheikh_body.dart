import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';

import '../../../../home/widget/home_widgets.dart';

class SwitchSheikhBody extends StatelessWidget {
  const SwitchSheikhBody({super.key});

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
          children: [
            const VerticalSpace(value: 3),
            BuildSearchWidget(onTap: () {}),
            const VerticalSpace(value: 2),
            ListView.separated(
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context, index) => const SheikhMazzoonCard(),
                separatorBuilder: (context, index) =>
                    const VerticalSpace(value: 1.5),
                itemCount: 8),
            const VerticalSpace(value: 3),
          ],
        ),
      ),
    );
  }
}
