import 'package:flutter/material.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/constants/constants.dart';

class TimesChoose extends StatefulWidget {
  const TimesChoose({super.key});

  @override
  State<TimesChoose> createState() => _TimesChooseState();
}

class _TimesChooseState extends State<TimesChoose> {
    List<String> times = ['9:00', '8:00', '7:00', '6:00', '5:00', '4:00'];
  int? timeSelected;
  int? radioValue;

  @override
  Widget build(BuildContext context) {
    return      SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  times.length,
                  (index) => InkWell(
                    onTap: () {
                      setState(() {
                        timeSelected = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: screenWidth(context) * 0.24,
                      height: screenHeight(context) * 0.05,
                      decoration: BoxDecoration(
                          color: const Color(0xffF4EFDF),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Radio<int>(
                              activeColor: Colorblack,
                              value: index,
                              groupValue: radioValue,
                              onChanged: (int? val) {
                                setState(() {
                                  radioValue = val!;
                                });
                              }),
                          Text(
                            times[index],
                            style: headingStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colorblack),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
       ;
  }
}