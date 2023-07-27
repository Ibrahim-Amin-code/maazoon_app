import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';

class ProfileItem extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  const ProfileItem({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  State<ProfileItem> createState() => _ProfileItemState();
}

class _ProfileItemState extends State<ProfileItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        height: screenHeight(context) * 0.07,
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.02),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(screenWidth(context) * 0.02),
            boxShadow: [
              BoxShadow(
                  color: colorLightGrey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(0, 2)),
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.text,
              style: headingStyle.copyWith(
                  color: mal3abColor.withOpacity(0.75),
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            const Icon(Icons.arrow_forward_ios_sharp),
          ],
        ),
      ),
    );
  }
}
