import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/home/widget/home_widgets.dart';

class SelectMaazonItem extends StatefulWidget {
  const SelectMaazonItem({super.key});

  @override
  State<SelectMaazonItem> createState() => _SelectMaazonItemState();
}

class _SelectMaazonItemState extends State<SelectMaazonItem> {
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
              "Choose right Ma'zoun for you", "اختر المأذون المناسب لك"),
          style: headingStyle.copyWith(
            fontSize: screenWidth(context) * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        const VerticalSpace(value: 2),
        ListView.separated(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => const SheikhMazzoonCard(),
          separatorBuilder: (context, index) => const VerticalSpace(value: 1.5),
          itemCount: 8,
        ),
      ],
    );
  }
}
