import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper/validation.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/space_widget.dart';
import '../../forgetpassword/forgetpassword.dart';
import '../../register/register.dart';

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
  bool isVisible = true;

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
                    'Login',
                    // maxLines: 2,
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const VerticalSpace(value: 3),
                SizedBox(
                  width: screenWidth(context) * 0.85,
                  // height: 90,
                  child: Text(
                    'Welcome Back Again And We Are Always At Your Service',
                    // textAlign: TextAlign.left,
                    maxLines: 2,
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                const VerticalSpace(value: 11),
                CustomTextFormField(
                    controller: phone,
                    validator: (value) => validateMobile(value!),
                    focusNode: phoneFocuse,
                    hint: 'mobile',
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
                    hint: 'Password',
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
                      passwordFocuse.unfocus();
                      // FocusScope.of(context).requestFocus(passwordFocuse);
                    }),
                const VerticalSpace(value: 0.9),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () =>
                        MagicRouter.navigateTo(const ForgetPasswordScreen()),
                    child: Text(
                      'Forgot Password?   ',

                      // maxLines: 2,
                      style: headingStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          decorationThickness: 1.5,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const VerticalSpace(value: 4.5),
                // BlocConsumer<AuthCubit, AuthState>(
                //   bloc: GetIt.I<AuthCubit>(),
                //   listener: (context, state) {},
                //   builder: (context, state) {
                //     return (state is! LoginLoadingState)
                //         ?
                //         CustomGeneralButton(
                //             text: 'Login',
                //             height: 45,
                //             textColor: Colors.white,
                //             borderColor: goldColor,
                //             fontSize: 18,
                //             onTap: () {
                //               if (formKey.currentState!.validate()) {
                //                 GetIt.I<AuthCubit>().postLogin(
                //                     phone: phone.text, password: password.text);

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
                  text: 'Login',
                  height: 45,
                  textColor: Colors.white,
                  borderColor: goldColor,
                  fontSize: 18,
                  onTap: () {
                    // if (formKey.currentState!.validate()) {
                    //   GetIt.I<AuthCubit>().postLogin(
                    //       phone: phone.text, password: password.text);

                    //   // print('eeeeeeeeeeeeeeeeeeeeeeeeeeeeee');
                    //   //  MagicRouter.navigateTo(const LoginScreen());
                    // }
                  },
                  color: goldColor,
                  borderRadius: 25,
                ),
                const VerticalSpace(value: 2.5),
                Center(
                  child: InkWell(
                    onTap: () => MagicRouter.navigateTo(const RegisterScreen()),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Don\'t Have Account?',
                            style: headingStyle.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: ' Sign Up',
                            style: headingStyle.copyWith(
                              color: goldColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
