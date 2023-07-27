// ignore_for_file: avoid_print
// import 'package:a3lan/core/constants/colors.dart';
// import 'package:a3lan/core/router/router.dart';
// import 'package:a3lan/presentation/screens/home/home.dart';
import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:mal3ab/presentation/screens/auth/login/login.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/router/router.dart';
import '../../../../core/widgets/space_widget.dart';
import '../login/login.dart';
import '../reset_password/reset_password_screen.dart';

class CodeBody extends StatefulWidget {
  final bool isfromregister;

  const CodeBody({super.key, required this.isfromregister});

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
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(
              right: screenWidth(context) * 0.2,
              top: screenHeight(context) * 0.48),
          child: Image.asset(
            'asset/icons/ball.png',
            height: screenHeight(context) * 0.8,
            width: screenWidth(context) * 2,
            fit: BoxFit.cover,
            color: Colors.white,
          ),
        ),
        Form(
          key: formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              vertical: screenHeight(context) * 0.02,
              horizontal: screenWidth(context) * 0.06,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const VerticalSpace(value: 2),
                SizedBox(
                  width: 300,
                  child: Text(
                    'We Have Sent A Message To Your Phone Number. Please Write The 5 - Digit Verification Number',
                    style: headingStyle.copyWith(
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                const VerticalSpace(value: 6),
                PinCodeTextField(
                  autofocus: true,
                  controller: code,

                  hideCharacter: false,
                  highlight: true,
                  highlightColor: goldColor,

                  defaultBorderColor: Colors.white,
                  hasTextBorderColor: Colors.white,
                  highlightPinBoxColor: Colors.transparent,
                  errorBorderColor: colorRed,
                  pinBoxColor: Colors.transparent,
                  pinBoxRadius: screenWidth(context) * 0.04,
                  maxLength: 5,

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
                  pinBoxWidth: screenWidth(context) * 0.15,
                  pinBoxHeight: screenHeight(context) * 0.07,
                  hasUnderline: false,
                  wrapAlignment: WrapAlignment.spaceAround,

                  pinBoxDecoration:
                      ProvidedPinBoxDecoration.roundedPinBoxDecoration,
                  pinTextStyle: headingStyle.copyWith(
                    color: Colors.white,
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
                Center(
                  child: Text(
                    'Resend Code After ${seonds}s',
                    style: headingStyle.copyWith(
                        height: 1.2, fontSize: 16, color: Colors.white),
                  ),
                ),
                const VerticalSpace(value: 15),
                CustomGeneralButton(
                  text: 'Submit',
                  height: 50,
                  borderRadius: 25,
                  textColor: Colors.white.withOpacity(0.6),
                  color: goldColor.withOpacity(0.7),
                  onTap: () {
                    if (code.text.length != 5) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.red,
                          content: Text(
                            'Please Write The Code',
                            style: headingStyle.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          )));
                    } else {
                      if (widget.isfromregister) {
                        MagicRouter.navigateAndPopAll(const LoginScreen());
                      } else {
                        MagicRouter.navigateAndPopAll(
                            const ResetPasswordScreen());
                      }
                    }

                    // if (formKey.currentState!.validate()) {
                    //   print('errrrrrrrrrrrrrrrrrr');

                    // MagicRouter.navigateAndPopUntilFirstPage(const HomeScreen(
                    //   currentIndex: 0,
                    // ));
                    // }
                  },
                ),
                const VerticalSpace(value: 2),
                Center(
                  child: Text(
                    'Please Rewrite The Code Correctly',
                    style: headingStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: colorlightred.withOpacity(0.65)),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
