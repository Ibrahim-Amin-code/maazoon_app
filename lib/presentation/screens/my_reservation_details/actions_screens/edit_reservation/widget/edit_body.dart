import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/core/widgets/space_widget.dart';
import 'package:maazoon_app/presentation/screens/my_reservation_details/actions_screens/edit_reservation/widget/edit_reservation_wigets.dart';

import '../../../../../../core/constants/colors.dart';
import '../../../../../../core/helper/validation.dart';
import '../../../../../../core/router/router.dart';
import '../../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../../generator/locale_keys.dart';
import '../../../../layout/layout.dart';
import '../../../widget/details_widgets.dart';

// ignore: must_be_immutable
class EditReservationBody extends StatelessWidget {
  EditReservationBody({super.key});

  final formKey = GlobalKey<FormState>();

  TextEditingController requestNumber = TextEditingController();

  TextEditingController address = TextEditingController();

  TextEditingController date = TextEditingController();

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
            const VerticalSpace(value: 2),
            ReservationDeatailsSheikhCard(
              isEditting: true,
              onTap: () {},
              statusTitle: LocaleKeys.wait_accepted.tr(),
              iconImage: "asset/images/Stopwatch.png",
              statusColor: textColor,
            ),
            const VerticalSpace(value: 1.5),
            Text(
              LocaleKeys.marriage_number.tr(),
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              controller: requestNumber,
              validator: (value) => validate(value!),
              label: LocaleKeys.num_ministry_of_Justice.tr(), //
              inputType: TextInputType.number,
            ),
            const VerticalSpace(value: 1.5),
            Text(
              LocaleKeys.choose_place.tr(),
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              suffix: Image.asset('asset/images/Icon (3).png'),
              controller: address,
              validator: (value) => validate(value!),
              label: translateString("searching for place", " البحث عن مكان"),
              inputType: TextInputType.streetAddress,
            ),
            const VerticalSpace(value: 1.5),
            Text(
              LocaleKeys.choose_day.tr(),
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 0.5),
            CustomTextFormField(
              suffix: Image.asset('asset/images/Calendar.png'),
              readOnly: true,
              ontap: () {},
              controller: date,
              validator: (value) => validate(value!),
              label: LocaleKeys.day.tr(),
              inputType: TextInputType.datetime,
            ),
            const VerticalSpace(value: 2.5),
            Text(
              LocaleKeys.choose_time.tr(),
              style: headingStyle.copyWith(
                  color: const Color(0xff1A1A1A),
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const VerticalSpace(value: 0.5),
            const TimesChoose(),
            const VerticalSpace(value: 3),
            CustomGeneralButton(
              height: screenHeight(context) * 0.06,
              textColor: Colors.white,
              color: buttonColor,
              text: LocaleKeys.save_edites.tr(),
              fontSize: 16,
              onTap: () {
                dialogMsg(
                    context: context,
                    onTap: () =>
                        MagicRouter.navigateAndPopAll(const LayoutScreen()),
                    isCongrate: false,
                    subTitle: LocaleKeys.edites_done.tr());
              },
              borderRadius: 16,
            )
          ],
        ),
      ),
    );
  }
}
