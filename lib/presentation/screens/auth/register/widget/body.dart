// ignore_for_file: deprecated_member_use, avoid_print, avoid_single_cascade_in_expression_statements, depend_on_referenced_packages

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/presentation/screens/auth/login/login.dart';
import 'package:maazoon_app/presentation/screens/auth/register/widget/register_widget.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper/validation.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/space_widget.dart';
import '../../../../../generator/locale_keys.dart';
import '../../code/code.dart';
// import '../../code/code.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController userName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController identity = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  FocusNode userNameFocuse = FocusNode();
  FocusNode phoneFocuse = FocusNode();
  FocusNode emailFocuse = FocusNode();
  FocusNode identityFocuse = FocusNode();
  FocusNode passwordFocuse = FocusNode();
  FocusNode confirmPasswordFocuse = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight(context),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15))),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VerticalSpace(value: 2.8),
              Text(
                LocaleKeys.welcom_mazzoon1.tr(),
                style: headingStyle.copyWith(
                    color: buttonColor,
                    fontWeight: FontWeight.w700,
                    fontSize: screenWidth(context) * 0.055),
              ),
              const VerticalSpace(value: 0.1),
              Text(
                LocaleKeys.welcom_mazzoon3.tr(),
                style: headingStyle.copyWith(
                    color: MazzoonColor,
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth(context) * 0.045),
              ),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  controller: userName,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(
                        "[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z' '"
                        "]")),
                    // FilteringTextInputFormatter.allow(RegExp(
                    //     "^[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z-' ']+[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z-' ']*\$")),
                  ],
                  validator: (value) => validateName(value!),
                  focusNode: userNameFocuse,
                  label: ' ${LocaleKeys.full_name.tr()}',
                  inputType: TextInputType.name,
                  onEditingComplete: () {
                    userNameFocuse.unfocus();
                    FocusScope.of(context).requestFocus(phoneFocuse);
                  }),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  controller: phone,
                  validator: (value) => validateMobile(value!),
                  focusNode: phoneFocuse,
                  label: ' ${LocaleKeys.phone.tr()}',
                  inputType: TextInputType.phone,
                  onEditingComplete: () {
                    phoneFocuse.unfocus();
                    FocusScope.of(context).requestFocus(emailFocuse);
                  }),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  controller: email,
                  label: ' ${LocaleKeys.email.tr()}',
                  validator: (value) => validateEmail(value!),
                  focusNode: emailFocuse,
                  // label: ' البريد الالكتروني',
                  inputType: TextInputType.emailAddress,
                  onEditingComplete: () {
                    emailFocuse.unfocus();
                    FocusScope.of(context).requestFocus(identityFocuse);
                  }),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  controller: identity,
                  validator: (value) => validate(value!),
                  focusNode: identityFocuse,
                  label: ' ${LocaleKeys.iD_number.tr()}',
                  inputType: TextInputType.number,
                  onEditingComplete: () {
                    identityFocuse.unfocus();
                    FocusScope.of(context).requestFocus(passwordFocuse);
                  }),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  controller: password,
                  isPassword: true,
                  validator: (value) => validatePassword(value!),
                  focusNode: passwordFocuse,
                  label: '  ${LocaleKeys.password.tr()}',
                  inputType: TextInputType.visiblePassword,
                  onEditingComplete: () {
                    passwordFocuse.unfocus();
                    FocusScope.of(context).requestFocus(confirmPasswordFocuse);
                  }),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  isPassword: true,
                  controller: confirmPassword,
                  validator: (value) => validatePassword(value!),
                  focusNode: confirmPasswordFocuse,
                  label: ' ${LocaleKeys.confirm_passowrd.tr()}',
                  inputType: TextInputType.visiblePassword,
                  onEditingComplete: () {
                    confirmPasswordFocuse.unfocus();
                  }),
              const VerticalSpace(value: 2),
              textSpanRegister(
                  onTap: () {},
                  text1: LocaleKeys.welcom_mazzoon4.tr(),
                  text2: LocaleKeys.terms_conditions.tr(),
                  textOne: MazzoonColor,
                  textTwo: MazzoonColor,
                  isUnder: true,
                  isBold: true),
              const VerticalSpace(value: 2),
              CustomGeneralButton(
                text: LocaleKeys.signup_button.tr(),
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
                    // MagicRouter.navigateTo(const LoginScreen());3
                    MagicRouter.navigateTo(CodeScreen(
                        titleAppBar: LocaleKeys.otp1.tr(),
                        buttonText: LocaleKeys.confirm.tr(),
                        onTap: () {
                          return dialogMsg(
                              context: context,
                              onTap: () => MagicRouter.navigateAndPopAll(
                                  const LoginScreen()),
                              isCongrate: true,
                              subTitle: LocaleKeys.welcom_mazzoon14.tr());
                        }));
                  }
                },
                color: buttonColor,
                borderRadius: 10,
                borderColor: Colors.black,
              ),
              const VerticalSpace(value: 0.5),
              Center(
                child: textSpanRegister(
                    onTap: () => MagicRouter.navigateTo(const LoginScreen()),
                    text1: LocaleKeys.have_account.tr(),
                    text2: LocaleKeys.login_now.tr(),
                    textOne: Colors.black,
                    textTwo: blueColor,
                    isUnder: false,
                    isBold: false),
              ),
              const VerticalSpace(value: 0.5),
            ],
          ),
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////
}
