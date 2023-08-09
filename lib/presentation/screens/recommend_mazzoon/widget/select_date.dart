import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';

class SelectWeddingDate extends StatefulWidget {
  const SelectWeddingDate({super.key});

  @override
  State<SelectWeddingDate> createState() => _SelectWeddingDateState();
}

class _SelectWeddingDateState extends State<SelectWeddingDate> {
  DateTime? selected;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const VerticalSpace(value: 2),
        Text(
          "اختر يوم عقد القران",
          style: headingStyle.copyWith(
            fontSize: screenWidth(context) * 0.05,
            fontWeight: FontWeight.bold,
          ),
        ),
        const VerticalSpace(value: 2),
        Container(
          decoration: BoxDecoration(
            color: buttonColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(
              screenWidth(context) * 0.03,
            ),
          ),
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
            ),
            value: [
              DateTime.now(),
            ],
            displayedMonthDate: DateTime.now(),
            onValueChanged: (dates) {},
          ),
        ),
      ],
    );
  }
}
