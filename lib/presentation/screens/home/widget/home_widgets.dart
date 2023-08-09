import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/presentation/screens/recommend_mazzoon/recommend_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../core/constants/constants.dart';

// Widget buildNotificationRow(context) =>

class BuildNotificationRow extends StatelessWidget {
  const BuildNotificationRow({super.key, required this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: screenHeight(context) * 0.09),
      color: MazzoonColor,
      height: screenHeight(context) * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'مرحبا بك في تطبيق مأذون',
            style: headingStyle.copyWith(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
          ),
          InkWell(
              //NotificationScreen
              onTap: onTap,
              child: Image.asset('asset/images/Frame 1000004556.png'))
        ],
      ),
    );
  }
}

// Widget buildSearchWidget(context) =>

class BuildSearchWidget extends StatelessWidget {
  const BuildSearchWidget({super.key, required this.onTap});
  final void Function()? onTap;
//
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: screenHeight(context) * 0.06,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Text(
              '  اسم المأذون',
              style: headingStyle.copyWith(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Container(
              width: screenWidth(context) * 0.2,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('ابحث',
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700)),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BuildRecommendCard extends StatelessWidget {
  const BuildRecommendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: screenHeight(context) * 0.02,
          horizontal: screenWidth(context) * 0.02),
      height: screenHeight(context) * 0.2,
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage(
              'asset/images/Frame 11.png',
            ),
            fit: BoxFit.cover),
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'لا تعرف من اين تبدأ؟',
                style: headingStyle.copyWith(
                    fontSize: 16.5,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'الامر بيسط معنا!',
                style: headingStyle.copyWith(
                    fontSize: 16.5,
                    color: MazzoonColor,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              PageTransition(
                child: const RecommendScreen(),
                type: PageTransitionType.leftToRight,
              ),
            ),
            child: Container(
              height: screenHeight(context) * 0.065,
              width: screenWidth(context) * 0.35,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text('رشح لي مأذون',
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class IntroImage extends StatelessWidget {
  const IntroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: screenHeight(context) * 0.2,
          left: screenWidth(context) * 0.03,
          right: screenWidth(context) * 0.03),
      height: screenHeight(context) * 0.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'asset/images/Frame 10.png',
              ))),
      child: Center(
          child: Image.asset(
        'asset/images/LOGO.png',
        height: screenHeight(context) * 0.065,
        width: screenWidth(context) * 0.6,
      )),
    );
  }
}

class SheikhMazzoonCard extends StatelessWidget {
  const SheikhMazzoonCard({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //MazzoonDetailsScreen
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.025),
        height: screenHeight(context) * 0.1,
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffE0E0E0)),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              width: screenWidth(context) * 0.2,
              height: screenHeight(context) * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage(
                        'asset/images/Rectangle 40143.png',
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: screenWidth(context) * 0.025,
            ),
            Text(
              'الشيخ - ابراهيم',
              style: headingStyle.copyWith(
                  color: const Color(0xff333333),
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(
                      CupertinoIcons.star_fill,
                      size: 10,
                      color: Color(0xffFDCF00),
                    ),
                    Text(
                      ' 4.2',
                      style: headingStyle.copyWith(
                          fontSize: 15,
                          color: colorGrey3,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('asset/images/Routing.png'),
                    Text(
                      ' 5 كيلو',
                      style: headingStyle.copyWith(
                          fontSize: 15,
                          color: colorGrey3,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AddsWeddingPlace extends StatelessWidget {
  const AddsWeddingPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context) * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage('asset/images/unsplash_GdwWrLHdwpw.png'),
              fit: BoxFit.cover)),
      child: Center(
        child: Text(
          'إعلان قاعة افراح',
          style: headingStyle.copyWith(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class SuggestMazzoon extends StatelessWidget {
  const SuggestMazzoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) * 0.35,
      decoration:
          BoxDecoration(border: Border.all(color: colorGrey3.withOpacity(0.1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: screenHeight(context) * 0.12,
            decoration: BoxDecoration(
                color: MazzoonColor,
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                    image: AssetImage('asset/images/Rectangle 40143.png'),
                    fit: BoxFit.cover)),
          ),
          Text(
            ' الشيخ- مشعل',
            style: headingStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w400, color: colorGrey3),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.01),
            child: Row(
              children: [
                Image.asset('asset/images/Routing.png'),
                Text(
                  ' 5 كيلو',
                  style: headingStyle.copyWith(
                      fontSize: 13,
                      color: colorGrey3,
                      fontWeight: FontWeight.w400),
                ),
                const Spacer(),
                const Icon(
                  CupertinoIcons.star_fill,
                  size: 10,
                  color: Color(0xffFDCF00),
                ),
                Text(
                  ' 4.2',
                  style: headingStyle.copyWith(
                      fontSize: 13,
                      color: colorGrey3,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
