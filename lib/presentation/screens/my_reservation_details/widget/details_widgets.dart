import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/generator/locale_keys.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/switch_sheikh/switch_sheikh.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';

class ActionButtonInReservationCard extends StatelessWidget {
  const ActionButtonInReservationCard(
      {super.key,
      required this.title,
      this.iconImage,
      required this.borderColor,
      required this.onTap,
      this.isEditting,
      required this.textColor});
  final String title;
  final bool? isEditting;

  final String? iconImage;
  final void Function() onTap;

  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.02),
        height: screenHeight(context) * 0.06,
        decoration: BoxDecoration(
            border: Border.all(
              color: borderColor,
              // colorGreen
            ),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: headingStyle.copyWith(
                  fontSize: 16, color: textColor, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: screenWidth(context) * 0.02,
            ),
            (isEditting == true)
                ? const SizedBox()
                : Image.asset(iconImage.toString())
          ],
        ),
      ),
    );
  }
}

class ReservationDeatailsSheikhCard extends StatelessWidget {
  final String statusTitle;
  final String iconImage;
  final Color statusColor;
  final bool? isEditting;

  final void Function() onTap;

  const ReservationDeatailsSheikhCard(
      {super.key,
      required this.onTap,
      required this.statusTitle,
      this.isEditting,
      required this.iconImage,
      required this.statusColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: (statusTitle == "تم قبول العرض" || (isEditting == true))
      //     ? screenHeight(context) * 0.21
      //     : screenHeight(context) * 0.14,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE0E0E0)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            // height: screenHeight(context) * 0.03,
            decoration: BoxDecoration(
                color: statusColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  statusTitle,
                  style: headingStyle.copyWith(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: screenWidth(context) * 0.01,
                ),
                Image.asset(iconImage)
              ],
            ),
          ),
          SizedBox(
            height: screenHeight(context) * 0.01,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.02),
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
          SizedBox(
            height: screenHeight(context) * 0.02,
          ),
          (statusTitle == LocaleKeys.offer_accepted.tr())
              ? ActionButtonInReservationCard(
                  onTap: onTap,
                  title: LocaleKeys.call_us.tr(),
                  iconImage: 'asset/images/Phone.png',
                  borderColor: colorGreen,
                  textColor: colorGreen)
              : (isEditting == true)
                  ? ActionButtonInReservationCard(
                      onTap: () =>
                          MagicRouter.navigateTo(const SwitchSheikhScreen()),
                      title: LocaleKeys.switch_mazzoon1.tr(),
                      isEditting: true,
                      borderColor: textColor,
                      textColor: textColor)
                  : const SizedBox()
        ],
      ),
    );
  }
}

class DetailsQuranDone extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageIcon;
  final bool? isHight;
  final bool? isFromDetails;
  final Color? subTitleColor;

  const DetailsQuranDone(
      {super.key,
      this.isHight,
      this.subTitleColor,
      this.isFromDetails,
      required this.title,
      required this.subTitle,
      required this.imageIcon});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: screenHeight(context) * 0.01),
          child: Image.asset(
            imageIcon,
            width: screenWidth(context) * 0.05,
          ),
        ),
        SizedBox(
          width: screenWidth(context) * 0.02,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (isFromDetails == true)
                ? const SizedBox()
                : Text(
                    title,
                    style: headingStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: colorGrey3.withOpacity(0.9)),
                  ),
            SizedBox(
              height: screenHeight(context) * 0.001,
            ),
            SizedBox(
              width: screenWidth(context) * 0.85,
              height: (isHight == true)
                  ? screenHeight(context) * 0.11
                  : screenHeight(context) * 0.04,
              child: Text(
                subTitle,
                style: headingStyle.copyWith(
                    fontSize: 15,
                    color: subTitleColor ?? colorGrey3.withOpacity(0.8),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        )
      ],
    );
  }
}
