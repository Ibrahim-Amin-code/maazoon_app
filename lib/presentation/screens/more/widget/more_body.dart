import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/auth/login/login.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/contact_us/contact_us_screen.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/profile/profile.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/wallet/wallet_screen.dart';
import 'package:maazoon_app/presentation/screens/more/widget/more_widgets.dart';

import '../../../../core/constants/colors.dart';
import '../more_screens/join_us/join_us_screen.dart';

class MoreBody extends StatefulWidget {
  const MoreBody({super.key});

  @override
  State<MoreBody> createState() => _MoreBodyState();
}

class _MoreBodyState extends State<MoreBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
      child: Column(
        children: [
          const VerticalSpace(value: 2.5),
          Center(
            child: Text(
              'عبدالعزيز سيد الصرفى',
              style: headingStyle.copyWith(
                color: blackcolor,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const VerticalSpace(value: 2.5),
          // dividerWidget(),
          buildMainTitleWidget(title: 'الملف الشخصي'),
          MoreCard(
              image: 'asset/images/Profile.png',
              title: 'الملف الشخصي',
              onTap: () {
                MagicRouter.navigateTo(const ProfileScreen());
              }),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Lock Password.png',
              title: 'تعديل كلمة السر',
              onTap: () {}),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Wallet.png',
              title: "محفظتي",
              onTap: () {
                MagicRouter.navigateTo(const WalletScreen());
              }),
          buildMainTitleWidget(title: "من نحن"),
          MoreCard(
              image: 'asset/images/Document.png',
              title: "عن مأذون",
              onTap: () {}),

          dividerWidget(),
          MoreCard(
              image: "asset/images/List Check Minimalistic.png",
              title: 'الشروط والاحكام',
              onTap: () {}),

          dividerWidget(),
          MoreCard(
              image: 'asset/images/Shield Check.png',
              title: 'سياسة الخصوصة',
              onTap: () {}),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Question Circle.png',
              title: 'الأسئلة الشائعة',
              onTap: () {}),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Folder Path Connect.png',
              title: "خريطة الموقع",
              onTap: () {}),
          buildMainTitleWidget(title: "الاعدادات"),
          MoreCard(
              image: 'asset/images/Chat  Square Check.png',
              title: 'تواصل معانا',
              onTap: () {
                MagicRouter.navigateTo(const ContactUsScreen());
              }),
          dividerWidget(),

          MoreCard(
              image: 'asset/images/Share.png',
              title: "شارك التطبيق",
              onTap: () {
                // MagicRouter.navigateTo(const ContactUsScreen());
              }),
          dividerWidget(),

          MoreCard(
              image: 'asset/images/Case Round.png',
              title: "انضم الى قائمة المأذونين",
              onTap: () {
                MagicRouter.navigateTo(const JoinUsScreen());
              }),
          dividerWidget(),

          LangCard(
              image: 'asset/images/Language.png', title: "اللغة", onTap: () {}),
          dividerWidget(),

          const MoreCard(
            isNotification: true,
            image: "asset/images/Bell Bing.png",
            title: "الإشعارات",
          ),
          dividerWidget(),

          MoreCard(
            onTap: () {},
            image: "asset/images/Logout 2.png",
            title: "تسجيل الخروج",
            titleColor: Colors.red,
            arrowColor: Colors.red,
          ),
          const VerticalSpace(value: 4),
          buildTextRow(),
          const VerticalSpace(value: 2),
        ],
      ),
    );
  }

  Widget buildTextRow() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'هذا التطبيق موثق من وزارة',
            style: headingStyle.copyWith(
                fontSize: 16, color: textColor, fontWeight: FontWeight.w600),
          ),
          Text(
            ' التجارة السعودية',
            style: headingStyle.copyWith(
                fontSize: 16, color: textColor, fontWeight: FontWeight.w700),
          ),
        ],
      );

  Widget buildMainTitleWidget({required String title}) => Container(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.02),
        height: screenHeight(context) * 0.03,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xff322C18),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), topRight: Radius.circular(8))),
        child: Text(
          title,
          style: headingStyle.copyWith(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      );
}
