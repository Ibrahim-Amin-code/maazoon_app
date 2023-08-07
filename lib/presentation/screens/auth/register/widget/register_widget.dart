import 'package:flutter/material.dart';
import '../../../../../core/constants/constants.dart';

Widget textSpanRegister(
        {required String text1,
        required String text2,
        required Color textOne,
        required Color textTwo,
        required bool isUnder,
        required void Function()? onTap,
        required bool isBold}) =>
    InkWell(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: text1,
              // 'لديك حساب؟'
              // ,
              style: headingStyle.copyWith(
                color: textOne,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            const TextSpan(text: " "),
            TextSpan(
              text: text2,
              style: headingStyle.copyWith(
                  color: textTwo,
                  // blueColor,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.w400,
                  fontSize: 14,
                  decoration:
                      isUnder ? TextDecoration.underline : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
