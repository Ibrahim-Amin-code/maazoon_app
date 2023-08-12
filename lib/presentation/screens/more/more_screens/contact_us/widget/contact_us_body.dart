// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/contact_us/widget/contact_widget.dart';

import '../../../../../../generator/locale_keys.dart';

class ContactUsBody extends StatelessWidget {
  ContactUsBody({
    super.key,
  });
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      width: double.infinity,
      height: screenHeight(context),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(value: 3),
            CustomTextFormField(
              label: LocaleKeys.email.tr(),
              prefix: Image.asset('asset/images/Icon (1).png'),
              hintColor: colorGrey3.withOpacity(0.8),
              controller: email,
              borderSideColor: colorGrey3.withOpacity(0.8),
            ),
            const VerticalSpace(value: 2),
            CustomTextFormField(
              prefix: Container(
                  margin:
                      EdgeInsets.only(bottom: screenHeight(context) * 0.085),
                  child: Image.asset('asset/images/Icon (2).png')),
              label: " ${LocaleKeys.type_message.tr()}",
              hintColor: colorGrey3.withOpacity(0.8),
              controller: message,
              borderSideColor: colorGrey3.withOpacity(0.8),
              maxLines: 3,
            ),
            const VerticalSpace(value: 4),
            CustomGeneralButton(
                text: LocaleKeys.send.tr(),
                height: screenHeight(context) * 0.065,
                color: buttonColor,
                borderRadius: 16,
                fontSize: 16,
                textColor: Colors.white,
                onTap: () {}),
            const VerticalSpace(value: 38),
            const SocialContact(),
          ],
        ),
      ),
    );
  }
}
