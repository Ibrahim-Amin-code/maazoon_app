import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/auth/forgetpassword/forget_password.dart';
import 'package:maazoon_app/presentation/screens/layout/layout.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper/validation.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/space_widget.dart';
import '../../register/register.dart';
import '../../register/widget/register_widget.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  FocusNode phoneFocuse = FocusNode();
  FocusNode passwordFocuse = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(value: 2.8),
            Text(
              'مرحبا بك في تطبيق مأذون',
              style: headingStyle.copyWith(
                  color: buttonColor,
                  fontWeight: FontWeight.w700,
                  fontSize: screenWidth(context) * 0.055),
            ),
            const VerticalSpace(value: 0.1),
            Text(
              "الشريك الموثوق لحفل زفافك",
              style: headingStyle.copyWith(
                  color: MazzoonColor,
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth(context) * 0.045),
            ),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
                controller: phone,
                validator: (value) => validateMobile(value!),
                focusNode: phoneFocuse,
                label: ' رقم الجوال',
                inputType: TextInputType.phone,
                onEditingComplete: () {
                  phoneFocuse.unfocus();
                  FocusScope.of(context).requestFocus(passwordFocuse);
                }),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
                controller: password,
                validator: (value) => validatePassword(value!),
                focusNode: passwordFocuse,
                label: '  كلمة المرور',
                inputType: TextInputType.visiblePassword,
                onEditingComplete: () {
                  passwordFocuse.unfocus();
                }),
            const VerticalSpace(value: 1.3),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () =>
                    MagicRouter.navigateTo(const ForgetPasswordScreen()),
                child: Text(
                  'نسيت كلمه المرور؟',
                  style: headingStyle.copyWith(
                    color: blueColor,
                    // blueColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const VerticalSpace(value: 1.3),
            CustomGeneralButton(
              text: 'تسجيل الدخول',
              height: 45,
              textColor: Colors.white,
              // borderColor: MazzoonColor,
              fontSize: 18,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  // if (colors.length == 2) {
                  // GetIt.I<AuthCubit>().postRegister(
                  //     name: fullName.text,
                  //     phone: phone.text,
                  //     email: email.text,
                  //     image: (imageApi != '')
                  //         ? MultipartFile.fromFileSync(imageApi)
                  //         : '',
                  //     password: password.text,
                  //     city: city.text,
                  //     place: place.text,
                  //     colors: colors);
                  // } else {
                  // showToast(
                  //     msg: 'You Must Select two Colors',
                  //     state: ToastStates.ERROR);
                  // }
                  MagicRouter.navigateAndPopAll(const LayoutScreen());
                }
              },
              color: buttonColor,
              borderRadius: 10,
            ),
            const VerticalSpace(value: 1),
            Center(
              child: textSpanRegister(
                  onTap: () => MagicRouter.navigateTo(const RegisterScreen()),
                  text1: 'ليس لديك حساب؟',
                  text2: "انشاء حساب جديد",
                  textOne: Colors.black,
                  textTwo: blueColor,
                  isUnder: false,
                  isBold: false),
            ),
            const VerticalSpace(value: 0.5),
          ],
        ),
      ),
    );
  }
}
