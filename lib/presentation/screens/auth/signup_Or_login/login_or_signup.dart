import 'package:flutter/material.dart';

class LoginOrSignUpScreen extends StatefulWidget {
  const LoginOrSignUpScreen({super.key});

  @override
  State<LoginOrSignUpScreen> createState() => _LoginOrSignUpScreenState();
}

class _LoginOrSignUpScreenState extends State<LoginOrSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container();

    //  Container(
    //   decoration: const BoxDecoration(
    //       image: DecorationImage(
    //     image: AssetImage(
    //       'asset/icons/ground.png',
    //     ),
    //     fit: BoxFit.cover,
    //   )),
    //   child: Scaffold(
    //     // backgroundColor: mal3abColor.withOpacity(0.85),
    //     body:
    //     Stack(
    //       alignment: Alignment.center,
    //       children: [
    //         Container(
    //           margin: EdgeInsets.only(
    //               right: screenWidth(context) * 0.2,
    //               top: screenHeight(context) * 0.6),
    //           child: Image.asset(
    //             'asset/icons/ball.png',
    //             height: screenHeight(context) * 0.8,
    //             // width: screenWidth(context) * 0.9,
    //             fit: BoxFit.cover,
    //             color: Colors.white,
    //           ),
    //         ),
    //         Padding(
    //           padding:
    //               EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.04),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               const VerticalSpace(value: 6),
    //               SizedBox(
    //                 width: screenWidth(context) * 0.75,
    //                 // height: 90,
    //                 child: Text(
    //                   'Start Booking Your Stadium Online Now',
    //                   maxLines: 2,
    //                   style: headingStyle.copyWith(
    //                       color: Colors.white,
    //                       fontSize: 30,
    //                       fontWeight: FontWeight.w700),
    //                 ),
    //               ),
    //               const VerticalSpace(value: 1),
    //               SizedBox(
    //                 width: screenWidth(context) * 0.85,
    //                 // height: 90,
    //                 child: Text(
    //                   'Through The Application, You Can Book An Appointment In Our Stadiums Or Challenge Other Teams',
    //                   textAlign: TextAlign.left,
    //                   maxLines: 3,
    //                   style: headingStyle.copyWith(
    //                       color: Colors.white,
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.w400),
    //                 ),
    //               ),
    //               const Spacer(),
    //               CustomGeneralButton(
    //                 text: 'Sign Up',
    //                 onTap: () {
    //                   MagicRouter.navigateTo(const RegisterScreen());
    //                 },
    //                 height: 50,
    //                 fontSize: 18,
    //                 borderRadius: 25,
    //                 color: goldColor,
    //                 textColor: Colors.white,
    //               ),
    //               const VerticalSpace(value: 1.5),
    //               CustomGeneralButton(
    //                 text: 'Login',
    //                 height: 50,
    //                 textColor: Colors.white,
    //                 borderColor: goldColor,
    //                 fontSize: 18,
    //                 onTap: () {
    //                   MagicRouter.navigateTo(const LoginScreen());
    //                 },
    //                 color: Colors.transparent,
    //                 borderRadius: 25,
    //               ),
    //               const VerticalSpace(value: 2.5),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),

    //   ),
    // );
  }
}
