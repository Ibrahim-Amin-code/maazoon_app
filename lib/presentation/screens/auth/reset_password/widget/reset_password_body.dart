import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/layout/layout.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper/validation.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/space_widget.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({super.key, required this.isFromProfile});
  final bool isFromProfile;

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  TextEditingController currentPassword = TextEditingController();

  FocusNode newPasswordFocus = FocusNode();
  FocusNode confirmPasswordFocus = FocusNode();
  bool isVisible = true;
  bool isVisible1 = true;

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
                'قم بادخال كلمة المرور الجديدة',
                style: headingStyle.copyWith(
                    color: MazzoonColor,
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth(context) * 0.045),
              ),
              const VerticalSpace(value: 1.5),
              (widget.isFromProfile)
                  ? CustomTextFormField(
                      isPassword: true,
                      controller: currentPassword,
                      validator: (value) => validatePassword(value!),
                      label: ' كلمة المرورالحالية',
                      hint: ' كلمة المرورالحالية',
                      inputType: TextInputType.visiblePassword,
                    )
                  : const SizedBox(),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  controller: newPassword,
                  validator: (value) => validatePassword(value!),
                  focusNode: newPasswordFocus,
                  isPassword: true,
                  label: ' كلمة المرور',
                  hint: "ادخل كلمة مرور جديدة",
                  inputType: TextInputType.visiblePassword,
                  onEditingComplete: () {
                    newPasswordFocus.unfocus();
                    FocusScope.of(context).requestFocus(confirmPasswordFocus);
                  }),
              const VerticalSpace(value: 1.5),
              CustomTextFormField(
                  controller: confirmPassword,
                  validator: (value) => validatePassword(value!),
                  focusNode: confirmPasswordFocus,
                  isPassword: true,
                  label: ' كلمة المرور',
                  hint: "اعد ادخال كلمة المرور",
                  inputType: TextInputType.visiblePassword,
                  onEditingComplete: () {
                    confirmPasswordFocus.unfocus();
                  }),
              const VerticalSpace(value: 2),
              CustomGeneralButton(
                text: 'حفظ',
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
                    // dialogMsg(context);
                    dialogMsg(
                        isCongrate: true,
                        subTitle: "تم تعديل كلمة المرور بنجاح",
                        context: context,
                        onTap: () => MagicRouter.navigateAndPopAll(
                            const LayoutScreen()));

                    // MagicRouter.navigateTo(const LayoutScreen());
                  }
                },
                color: buttonColor,
                borderRadius: 10,
              ),
              const VerticalSpace(value: 0.5),
            ],
          ),
        ),
      ),
    );
  }
}
