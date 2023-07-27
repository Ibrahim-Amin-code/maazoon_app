import 'package:flutter/material.dart';
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
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  FocusNode emailFocuse = FocusNode();
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
                    'Forgot Password',
                    // maxLines: 2,
                    style: headingStyle.copyWith(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const VerticalSpace(value: 20),
                CustomTextFormField(
                  controller: email,
                  validator: (value) => validateMobile(value!),
                  focusNode: emailFocuse,
                  hint: 'Mobile Phone',
                  inputType: TextInputType.number,
                ),
                const VerticalSpace(value: 3),
                CustomGeneralButton(
                  text: 'Send',
                  height: 45,
                  textColor: Colors.white,
                  borderColor: goldColor,
                  fontSize: 18,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      MagicRouter.navigateTo(const CodeScreen(isfromregister: false,));

                      // GetIt.I<AuthCubit>().postLogin(
                      //     email: email.text, password: password.text);

                    }
                  },
                  color: goldColor,
                  borderRadius: 25,
                )

                // BlocConsumer<AuthCubit, AuthState>(
                //   bloc: GetIt.I<AuthCubit>(),
                //   listener: (context, state) {},
                //   builder: (context, state) {
                //     return (state is! LoginLoadingState)
                //         ?

                //         : loading(Colors.white);
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
