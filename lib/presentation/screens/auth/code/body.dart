import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/generator/locale_keys.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/widgets/space_widget.dart';
import '../register/widget/register_widget.dart';

class CodeBody extends StatefulWidget {
  const CodeBody({
    super.key,
    required this.buttonText,
    required this.onTap,
  });

  final String buttonText;
  final void Function() onTap;

//required void Function() onTap
  @override
  State<CodeBody> createState() => _CodeBodyState();
}

class _CodeBodyState extends State<CodeBody> {
  TextEditingController code = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool hasError = false;
  String currentText = "";

  int seonds = 60;

  startMinutes() {
    // tempTime = minutes * 60 + seonds;
    // if (mounted) {
    Timer.periodic(const Duration(seconds: 1), (e) {
      // print(minutes);

      if (e.isActive) {
        if (mounted) {
          if (seonds != 0) {
            setState(() {
              seonds--;
            });
          } else {
            setState(() {
              seonds = 0;
            });
          }
        }
      }
    });
  }

  @override
  void initState() {
    startMinutes();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(value: 2.8),
              Text(
                LocaleKeys.welcom_mazzoon6.tr(),
                style: headingStyle.copyWith(
                    color: const Color(0xff322C18),
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth(context) * 0.04),
              ),
              const VerticalSpace(value: 1),
              PinCodeTextField(
                autofocus: true,
                controller: code,
                // pinBoxOuterPadding: EdgeInsets.symmetric(horizontal: 1.5),
                hideCharacter: false,
                highlight: true,
                highlightColor: const Color(0xff545454),

                // defaultBorderColor: colorRed,
                hasTextBorderColor: const Color(0xff545454),
                highlightPinBoxColor: const Color(0xff545454),
                errorBorderColor: const Color(0xff545454),
                pinBoxColor: const Color(0xff545454),
                pinBoxRadius: screenWidth(context) * 0.04,
                maxLength: 6,

                hasError: hasError,
                // maskCharacter: "😎",
                onTextChanged: (text) {
                  setState(() {
                    hasError = false;
                  });
                },
                onDone: (text) {
                  print("DONE $text");
                  print("DONE CONTROLLER ${code.text}");
                },
                pinBoxWidth: screenWidth(context) * 0.13,
                pinBoxHeight: screenHeight(context) * 0.07,
                hasUnderline: false,
                wrapAlignment: WrapAlignment.spaceEvenly,

                pinBoxDecoration:
                    ProvidedPinBoxDecoration.underlinedPinBoxDecoration,
                pinTextStyle: headingStyle.copyWith(
                  color: const Color(0xff383838),
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth(context) * 0.07,
                ),

                pinTextAnimatedSwitcherTransition:
                    ProvidedPinBoxTextAnimation.scalingTransition,
                pinTextAnimatedSwitcherDuration:
                    const Duration(milliseconds: 300),

                // highlightAnimation: true,
                highlightAnimationBeginColor: mal3abColor,
                highlightAnimationEndColor: Colors.white12,
                keyboardType: TextInputType.number,
              ),
              const VerticalSpace(value: 3),
              CustomGeneralButton(
                text: widget.buttonText,
                height: 45,
                textColor: Colors.white,
                // borderColor: MazzoonColor,
                fontSize: 18,
                onTap: widget.onTap,
                color: buttonColor,
                borderRadius: 10,
              ),
              const VerticalSpace(value: 4),
              textSpanRegister(
                  onTap: () {},
                  text1: LocaleKeys.welcom_mazzoon8.tr(),
                  text2: LocaleKeys.welcom_mazzoon7.tr(),
                  textOne: MazzoonColor,
                  textTwo: blueColor,
                  isUnder: true,
                  isBold: false),
            ],
          ),
        ),
      ),
    );
  }
}
