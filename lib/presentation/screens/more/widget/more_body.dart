import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/generator/locale_keys.dart';
import 'package:maazoon_app/presentation/screens/auth/reset_password/reset_password_screen.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/contact_us/contact_us_screen.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/profile/profile.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/wallet/wallet_screen.dart';
import 'package:maazoon_app/presentation/screens/more/widget/more_widgets.dart';
import 'package:page_transition/page_transition.dart';

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
          buildMainTitleWidget(title: LocaleKeys.profile.tr()),
          MoreCard(
              image: 'asset/images/Profile.png',
              title: LocaleKeys.profile.tr(),
              onTap: () {
                MagicRouter.navigateTo(const ProfileScreen());
              }),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Lock Password.png',
              title: translateString("Change Password", "تعديل كلمة السر"),
              onTap: () {
                MagicRouter.navigateTo(
                    const ResetPasswordScreen(isFromProfile: true));
              }),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Wallet.png',
              title: LocaleKeys.my_wallet.tr(),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      child: const WalletScreen(),
                      type: PageTransitionType.leftToRight,
                    ));
              }),
          buildMainTitleWidget(title: LocaleKeys.about_us.tr()),
          MoreCard(
              image: 'asset/images/Document.png',
              title: LocaleKeys.about_mazzoon.tr(),
              onTap: () {}),

          dividerWidget(),
          MoreCard(
              image: "asset/images/List Check Minimalistic.png",
              title: LocaleKeys.terms_conditions.tr(),
              onTap: () {}),

          dividerWidget(),
          MoreCard(
              image: 'asset/images/Shield Check.png',
              title: LocaleKeys.privacy_policy.tr(),
              onTap: () {}),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Question Circle.png',
              title: LocaleKeys.common_questions.tr(),
              onTap: () {}),
          dividerWidget(),
          MoreCard(
              image: 'asset/images/Folder Path Connect.png',
              title: LocaleKeys.location_map.tr(),
              onTap: () {}),
          buildMainTitleWidget(
            title: LocaleKeys.settings.tr(),
          ),
          MoreCard(
              image: 'asset/images/Chat  Square Check.png',
              title: LocaleKeys.contact_us.tr(),
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                      child: const ContactUsScreen(),
                      type: PageTransitionType.leftToRight,
                    ));
              }),
          dividerWidget(),

          MoreCard(
              image: 'asset/images/Share.png',
              title: LocaleKeys.share_app.tr(),
              onTap: () {
                // MagicRouter.navigateTo(const ContactUsScreen());
              }),
          dividerWidget(),

          MoreCard(
              image: 'asset/images/Case Round.png',
              title: LocaleKeys.join_to_mazzoon.tr(),
              onTap: () {
                MagicRouter.navigateTo(const JoinUsScreen());
              }),
          dividerWidget(),

          LangCard(
              image: 'asset/images/Language.png',
              title: LocaleKeys.lang.tr(),
              onTap: () {}),

          dividerWidget(),

          MoreCard(
            isNotification: true,
            image: "asset/images/Bell Bing.png",
            title: LocaleKeys.notification.tr(),
          ),
          dividerWidget(),

          MoreCard(
            onTap: () {},
            image: "asset/images/Logout 2.png",
            title: LocaleKeys.logout.tr(),
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
            LocaleKeys.more_title.tr(),
            style: headingStyle.copyWith(
                fontSize: 15, color: textColor, fontWeight: FontWeight.w600),
          ),
          Text(
            LocaleKeys.more_title1.tr(),
            style: headingStyle.copyWith(
                fontSize: 14, color: textColor, fontWeight: FontWeight.w700),
          ),
        ],
      );

  Widget buildMainTitleWidget({required String title}) => Container(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.02),
        // height: screenHeight(context) * 0.03,
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
