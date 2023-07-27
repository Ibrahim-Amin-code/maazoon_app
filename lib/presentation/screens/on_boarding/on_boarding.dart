// import 'package:flutter/material.dart';
// import 'package:mal3ab/presentation/screens/layout/layout.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../core/constants/colors.dart';
// import '../../../core/constants/constants.dart';
// import '../../../core/router/router.dart';
// import '../../../core/widgets/custom_buttons_widget.dart';

// // import 'package:travel/constants/constants.dart';
// // import 'package:travel/presentation/screens/authentication/login_or_signup/login_or_signUp_screen.dart';
// // import 'package:travel/presentation/widgets/onBoarding_content/onBoarding_content.dart';

// class OnBoardingScreen extends StatefulWidget {
//   @override
//   _OnBoardingScreenState createState() => _OnBoardingScreenState();
// }

// class _OnBoardingScreenState extends State<OnBoardingScreen> {
//   int currentPage = 0;
//   // bool isLast = false;

//   List<Map<String, String>> splashData = [
//     {"image": "asset/icons/Mask Group 171.png"},
//     {"image": "asset/icons/Mask Group 171.png"},
//     {"image": "asset/icons/Mask Group 171.png"},
//     {"image": "asset/icons/Mask Group 171.png"},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           SizedBox(
//             height: screenHeight(context) * 0.08,
//           ),
//           SizedBox(
//             height: screenHeight(context) * 0.74,
//             // width: double.infinity,
//             child: PageView.builder(
//               physics: const BouncingScrollPhysics(),
//               onPageChanged: (value) {
//                 setState(() {
//                   currentPage = value;
//                 });
//               },
//               itemCount: splashData.length,
//               itemBuilder: (context, index) => SplashContent(
//                 image: splashData[index]["image"].toString(),
//               ),
//             ),
//           ),
//           SizedBox(
//             height: screenHeight(context) * 0.005,
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               splashData.length,
//               (index) => buildOnBoardingDot(
//                   index: index, currentPage: currentPage, context: context),
//             ),
//           ),
//           SizedBox(
//             height: screenHeight(context) * 0.01,
//           ),
//           CustomGeneralButton(
//             borderRadius: 15,
//             text: 'الذهاب لحساب العميل',
//             onTap: () {
//               // MagicRouter.navigateTo(const LoginScreen());
//             },
//             textColor: Colors.white,
//             color: kMainColor,
//             fontSize: 23,
//             height: screenHeight(context) * 0.06,
//             width: screenWidth(context) * 0.6,
//           ),
//           SizedBox(
//             height: screenHeight(context) * 0.013,
//           ),
//           CustomGeneralButton(
//             borderRadius: 15,
//             text: 'المتابعة الى بازار',
//             onTap: () {
//               MagicRouter.navigateTo(const LayoutScreen(
//                 index: 0,
//               ));
//             },
//             textColor: Colors.white,
//             color: coloramber,
//             fontSize: 30,
//             borderColor: Colors.transparent,
//             height: screenHeight(context) * 0.063,
//             width: screenWidth(context) * 0.85,
//           ),
//           SizedBox(
//             height: screenHeight(context) * 0.006,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SplashContent extends StatelessWidget {
//   final String image;

//   const SplashContent({Key? key, required this.image}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       image,
//       fit: BoxFit.fitHeight,
//     );
//   }
// }

// AnimatedContainer buildOnBoardingDot(
//     {required int index, required int currentPage, required context}) {
//   return AnimatedContainer(
//     duration: const Duration(milliseconds: 250),
//     // margin: EdgeInsets.only(right: w * 0.03),
//     height: screenHeight(context) * 0.015,
//     width: currentPage == index
//         ? screenWidth(context) * 0.06
//         : screenWidth(context) * 0.03,
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       color: currentPage == index ? coloramber : coloramber.withOpacity(0.3),
//     ),
//   );
// }
