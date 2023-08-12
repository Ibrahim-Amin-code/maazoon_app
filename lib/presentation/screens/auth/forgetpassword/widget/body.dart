import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:maazoon_app/generator/locale_keys.dart';
import 'package:maazoon_app/presentation/screens/auth/reset_password/reset_password_screen.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper/validation.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/space_widget.dart';
import '../../code/code.dart';

class ForgetPasswordBody extends StatefulWidget {
  const ForgetPasswordBody({super.key});

  @override
  State<ForgetPasswordBody> createState() => _ForgetPasswordBodyState();
}

class _ForgetPasswordBodyState extends State<ForgetPasswordBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phone = TextEditingController();

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
                LocaleKeys.welcom_mazzoon5.tr(),
                style: headingStyle.copyWith(
                    color: MazzoonColor,
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth(context) * 0.045),
              ),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                controller: phone,
                validator: (value) => validateMobile(value!),
                label: ' ${LocaleKeys.phone.tr()}',
                inputType: TextInputType.phone,
              ),
              const VerticalSpace(value: 1.5),
              CustomGeneralButton(
                text: LocaleKeys.send_code.tr(),
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
                    MagicRouter.navigateTo(CodeScreen(
                        titleAppBar: LocaleKeys.forget_password2.tr(),
                        buttonText: LocaleKeys.check.tr(),
                        onTap: () =>
                            MagicRouter.navigateTo(const ResetPasswordScreen(
                              isFromProfile: false,
                            ))));
                  }
                },
                color: buttonColor,
                borderRadius: 10,
                // borderColor: Colors.black,
              ),
              const VerticalSpace(value: 0.5),
            ],
          ),
        ),
      ),
    );
  }
}
