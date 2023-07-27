import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/constants.dart';

class SelectCity extends StatefulWidget {
  final String text;
  final String subtext;
  final VoidCallback? onTap;

  const SelectCity(
      {super.key, required this.text, required this.subtext, this.onTap});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.text,
          style: headingStyle.copyWith(color: Colorblack, fontSize: 20),
        ),
        InkWell(
          onTap: widget.onTap,
          child: Container(
            padding:
                EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.03),
            height: screenHeight(context) * 0.065,
            width: screenWidth(context) * 0.37,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: colorLightGrey)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.subtext,
                  style: headingStyle.copyWith(fontSize: 18, color: Colorblack),
                ),
                // ignore: prefer_const_constructors
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: 25,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
