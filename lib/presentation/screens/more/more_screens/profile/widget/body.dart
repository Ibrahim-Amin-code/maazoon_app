import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/widgets/custom_buttons_widget.dart';
import 'package:maazoon_app/core/widgets/custom_text_field.dart';
import 'package:maazoon_app/presentation/screens/more/more_screens/profile/widget/profile_widget.dart';

import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/widgets/space_widget.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  TextEditingController fullName = TextEditingController();

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const VerticalSpace(value: 1.5),
            const PickImage(),
            const VerticalSpace(value: 2.5),
            CustomTextFormField(
              controller: fullName,
              label: " الاسم",
              // fillColor: ,
            ),
            const VerticalSpace(value: 2.5),
            CustomGeneralButton(
                text: "تعديل رقم الهاتف",
                height: screenHeight(context) * 0.065,
                color: Colors.white,
                borderColor: Colors.black,
                iconImage: "asset/images/Pen New Square.png",
                borderRadius: 16,
                fontSize: 16,
                textColor: Colors.black,
                onTap: () {}),
            const VerticalSpace(value: 2.5),
            CustomGeneralButton(
                text: "حفظ التعديلات",
                height: screenHeight(context) * 0.065,
                color: buttonColor,
                borderRadius: 16,
                fontSize: 16,
                textColor: Colors.white,
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
