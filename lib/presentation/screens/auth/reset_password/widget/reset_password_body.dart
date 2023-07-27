import 'package:flutter/material.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper/validation.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/space_widget.dart';
import '../../login/login.dart';

class ResetPasswordBody extends StatefulWidget {
  const ResetPasswordBody({super.key});

  @override
  State<ResetPasswordBody> createState() => _ResetPasswordBodyState();
}

class _ResetPasswordBodyState extends State<ResetPasswordBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  FocusNode newPasswordFocus = FocusNode();
  FocusNode confirmPasswordFocus = FocusNode();
  bool isVisible = true;
  bool isVisible1 = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(
                right: screenWidth(context) * 0.2,
                top: screenHeight(context) * 0.6),
            child: Image.asset(
              'asset/icons/ball.png',
              height: screenHeight(context) * 0.8,
              width: screenWidth(context) * 2,
              fit: BoxFit.cover,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(value: 6),
                SizedBox(
                  width: screenWidth(context) * 0.75,
                  // height: 90,
                  child: Text(
                    'Reset Password',
                    // maxLines: 2,
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const VerticalSpace(value: 12),
                CustomTextFormField(
                    controller: newPassword,
                    validator: (value) => validatePassword(value!),
                    focusNode: newPasswordFocus,
                    hint: 'New Password',
                    isPassword: isVisible,
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                        !isVisible
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: eyeColor,
                        size: 20,
                      ),
                    ),
                    inputType: TextInputType.visiblePassword,
                    onEditingComplete: () {
                      confirmPasswordFocus.unfocus();
                      // FocusScope.of(context).requestFocus(passwordFocuse);
                    }),
                const VerticalSpace(value: 2.5),
                CustomTextFormField(
                    controller: confirmPassword,
                    validator: (value) =>
                        validateConfirmPassword(value!, newPassword.text),
                    focusNode: confirmPasswordFocus,
                    hint: 'Confirm Password',
                    isPassword: isVisible1,
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          isVisible1 = !isVisible1;
                        });
                      },
                      child: Icon(
                        !isVisible1
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: eyeColor,
                        size: 20,
                      ),
                    ),
                    inputType: TextInputType.visiblePassword,
                    onEditingComplete: () {
                      confirmPasswordFocus.unfocus();
                      // FocusScope.of(context).requestFocus(passwordFocuse);
                    }),
                const VerticalSpace(value: 5),
                // BlocConsumer<AuthCubit, AuthState>(
                //   bloc: GetIt.I<AuthCubit>(),
                //   listener: (context, state) {},
                //   builder: (context, state) {
                //     return (state is! LoginLoadingState)
                //         ? CustomGeneralButton(
                //             text: 'Confirm',
                //             height: 45,
                //             textColor: Colors.white,
                //             borderColor: goldColor,
                //             fontSize: 18,
                //             onTap: () {
                //               if (formKey.currentState!.validate()) {
                //                 // GetIt.I<AuthCubit>().postLogin(
                //                 //     email: email.text, password: password.text);

                //                 // print('eeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
                //                 //  MagicRouter.navigateTo(const LoginScreen());
                //               }
                //             },
                //             color: goldColor,
                //             borderRadius: 25,
                //           )
                //         : loading(Colors.white);
                //   },
                // ),
                CustomGeneralButton(
                  text: 'Confirm',
                  height: 45,
                  textColor: Colors.white,
                  borderColor: goldColor,
                  fontSize: 18,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      // GetIt.I<AuthCubit>().postLogin(
                      //     email: email.text, password: password.text);

                      // print('eeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
                      MagicRouter.navigateAndPReplacement(const LoginScreen());
                    }
                  },
                  color: goldColor,
                  borderRadius: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
