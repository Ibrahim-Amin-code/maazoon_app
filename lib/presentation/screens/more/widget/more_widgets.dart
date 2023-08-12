import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/widgets/custom_drop_down.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/space_widget.dart';

class MoreCard extends StatefulWidget {
  final String image;
  final String title;
  final Color? titleColor;
  final Color? arrowColor;

  final bool? isNotification;
  final void Function()? onTap;

  const MoreCard(
      {super.key,
      required this.image,
      required this.title,
      this.onTap,
      this.titleColor,
      this.isNotification,
      this.arrowColor});

  @override
  State<MoreCard> createState() => _MoreCardState();
}

class _MoreCardState extends State<MoreCard> {
  bool isPhone = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          const VerticalSpace(value: 1.5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
              ),
              SizedBox(
                width: screenWidth(context) * 0.02,
              ),
              Text(
                widget.title,
                style: headingStyle.copyWith(
                    color: widget.titleColor ?? textColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              (widget.isNotification == true)
                  ? CupertinoSwitch(
                      value: isPhone,
                      onChanged: (value) {
                        setState(() {
                          isPhone = value;
                        });
                      },
                      activeColor: MazzoonColor,
                      trackColor: colorGreyLight.withOpacity(0.4),
                    )
                  : Icon(
                      Icons.arrow_forward_ios,
                      size: screenWidth(context) * 0.06,
                      color: widget.arrowColor ?? const Color(0xff333333),
                    )
              // :
            ],
          ),
          const VerticalSpace(value: 1.5),
        ],
      ),
    );
  }
}

class LangCard extends StatelessWidget {
  final String image;
  final String title;
  final void Function() onTap;

  const LangCard(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(value: 1.5),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image),
            SizedBox(
              width: screenWidth(context) * 0.02,
            ),
            Text(
              title,
              style: headingStyle.copyWith(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.w700),
            ),
            const Spacer(),
            SizedBox(
              width: screenWidth(context) * 0.35,
              child: CustomDropDown(
                borderColor: Colors.transparent,
                text: prefs.getString('language')!,
                items: const [
                  "العربية",
                  "English",
                ],
              ),
            ),

            // Text(
            //   prefs.getString('language')!,
            //   style: headingStyle.copyWith(
            //     fontSize: 15,
            //     fontWeight: FontWeight.w400,
            //     color: textColor,
            //   ),
            // ),
            // SizedBox(
            //   width: screenWidth(context) * 0.01,
            // ),
            // InkWell(
            //   onTap: onTap,
            //   child: Icon(
            //     Icons.keyboard_arrow_down_outlined,
            //     size: screenWidth(context) * 0.08,
            //   ),
            // )
          ],
        ),
        const VerticalSpace(value: 1.5),
      ],
    );
  }
}
