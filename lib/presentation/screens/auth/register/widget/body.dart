// ignore_for_file: deprecated_member_use, avoid_print, avoid_single_cascade_in_expression_statements, depend_on_referenced_packages
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fast_color_picker/fast_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/helper/validation.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/space_widget.dart';
import '../../login/login.dart';
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

  // int? selectedCountry;
  bool isVisible1 = true;
  bool isVisible2 = true;

  // bool isSeleted = false;

  File? image;
  String imageApi = "";

  Future getImage() async {
    ImagePicker picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        imageApi = pickedFile.path;
        image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const VerticalSpace(value: 5),
            CustomTextFormField(
                controller: userName,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                      RegExp("[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z' '"
                          "]")),
                  // FilteringTextInputFormatter.allow(RegExp(
                  //     "^[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z-' ']+[\u0600-\u065F\u066A-\u06EF\u06FA-\u06FFa-zA-Z-' ']*\$")),
                ],
                validator: (value) => validateName(value!),
                focusNode: userNameFocuse,
                hint: '  اسم المسخدم',
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
                hint: '  رقم الجوال',
                inputType: TextInputType.phone,
                onEditingComplete: () {
                  phoneFocuse.unfocus();
                  FocusScope.of(context).requestFocus(emailFocuse);
                }),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
                controller: email,
                validator: (value) => validateEmail(value!),
                focusNode: emailFocuse,
                hint: '  البريد الالكتروني',
                inputType: TextInputType.emailAddress,
                onEditingComplete: () {
                  emailFocuse.unfocus();
                  FocusScope.of(context).requestFocus(identityFocuse);
                }),
            const VerticalSpace(value: 1.5),
            CustomTextFormField(
                controller: email,
                validator: (value) => validateEmail(value!),
                focusNode: emailFocuse,
                hint: '  رقم الهوية',
                inputType: TextInputType.number,
                onEditingComplete: () {
                  emailFocuse.unfocus();
                  FocusScope.of(context).requestFocus(identityFocuse);
                }),
            const VerticalSpace(value: 1.5),

            CustomTextFormField(
                // isLTR: true,
                controller: password,
                validator: (value) => validatePassword(value!),
                focusNode: passwordFocuse,
                hint: '   كلمة المرور',
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
                  passwordFocuse.unfocus();
                }),

            const VerticalSpace(value: 1.5),
            CustomTextFormField(
                controller: password,
                validator: (value) => validatePassword(value!),
                focusNode: passwordFocuse,
                hint: '  تأكيد كلمة المرور',
                isPassword: isVisible2,
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      isVisible2 = !isVisible2;
                    });
                  },
                  child: Icon(
                    !isVisible2
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: eyeColor,
                    size: 20,
                  ),
                ),
                inputType: TextInputType.visiblePassword,
                onEditingComplete: () {
                  passwordFocuse.unfocus();
                }),
            const VerticalSpace(value: 2),
            //  image == null
            //     ? InkWell(
            //         onTap: () async {
            //           await getImage();
            //         },
            //         child: Container(
            //             height: screenHeight(context) * 0.12,
            //             width: screenWidth(context) * 0.24,
            //             decoration: const BoxDecoration(
            //                 shape: BoxShape.circle,
            //                 color: Colors.white),
            //             child: Column(
            //               crossAxisAlignment:
            //                   CrossAxisAlignment.center,
            //               mainAxisAlignment:
            //                   MainAxisAlignment.center,
            //               children: [
            //                 Icon(
            //                   Icons.image,
            //                   color: mal3abColor,
            //                   size: 30,
            //                 ),
            //                 const VerticalSpace(value: 0.5),
            //                 Text(
            //                   'Add Photo',
            //                   style: headingStyle.copyWith(
            //                       fontSize: 14,
            //                       color: mal3abColor,
            //                       fontWeight: FontWeight.w600),
            //                 )
            //               ],
            //             )),
            //       )
            //     : Center(
            //         child: InkWell(
            //           onTap: () async {
            //             await getImage();
            //           },
            //           child: CircleAvatar(
            //             backgroundImage: FileImage(image!),
            //             radius: screenWidth(context) * 0.112,
            //           ),
            //         ),
            //       ),

            const VerticalSpace(value: 1),
            CustomGeneralButton(
              text: 'انشاء حساب جديد',
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

                  // MagicRouter.navigateTo(const CodeScreen());
                }
              },
              color: buttonColor,
              borderRadius: 25,
            )

            // BlocConsumer<AuthCubit, AuthState>(
            //   listener: (context, state) {},
            //   bloc: GetIt.I<AuthCubit>(),
            //   builder: (context, state) {
            //     return (state is! RegisterLoadingState)
            //         ?
            //         : loading(Colors.white);
            //   },
            // ),

            // const VerticalSpace(value: 2.2),
            // Center(
            //   child: InkWell(
            //     onTap: () => MagicRouter.navigateTo(const LoginScreen()),
            //     child: RichText(
            //       text: TextSpan(
            //         children: [
            //           TextSpan(
            //             text: 'Already Have Account?',
            //             style: headingStyle.copyWith(
            //               color: Colors.white,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 18,
            //             ),
            //           ),
            //           TextSpan(
            //             text: ' Log In',
            //             style: headingStyle.copyWith(
            //               color: goldColor,
            //               fontWeight: FontWeight.w600,
            //               fontSize: 18,
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // const VerticalSpace(value: 1),
          ],
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////
}
