// ignore_for_file: deprecated_member_use, avoid_print, avoid_single_cascade_in_expression_statements, depend_on_referenced_packages
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../../../core/constants/colors.dart';
import '../../../../../../../core/constants/constants.dart';
import '../../../../../../../core/helper/validation.dart';
import '../../../../../../../core/widgets/custom_buttons_widget.dart';
import '../../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../../core/widgets/space_widget.dart';
// import '../../code/code.dart';

class EditProfileBody extends StatefulWidget {
  const EditProfileBody({super.key});

  @override
  State<EditProfileBody> createState() => _EditProfileBodyState();
}

class _EditProfileBodyState extends State<EditProfileBody> {
  final formKey = GlobalKey<FormState>();
  TextEditingController phone = TextEditingController();
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController place = TextEditingController();

  FocusNode phoneFocuse = FocusNode();
  FocusNode fullNameFocuse = FocusNode();
  FocusNode emailFocuse = FocusNode();
  FocusNode passwordFocuse = FocusNode();
  FocusNode cityFocuse = FocusNode();
  FocusNode placeFocuse = FocusNode();

  // int? selectedCountry;
  bool isVisible = true;
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
  // void initState() {
  //   if (GetIt.I<AuthCubit>().getProfileModel != null) {
  //     phone.text = GetIt.I<AuthCubit>().getProfileModel!.phone!;
  //     fullName.text = GetIt.I<AuthCubit>().getProfileModel!.name!;
  //     email.text = GetIt.I<AuthCubit>().getProfileModel!.email!;
  //     city.text = GetIt.I<AuthCubit>().getProfileModel!.city!;
  //     place.text = GetIt.I<AuthCubit>().getProfileModel!.place!;
  //     // password.text = GetIt.I<AuthCubit>().getProfileModel!.password!;
  //   }
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth(context) * 0.05,
          vertical: screenHeight(context) * 0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              height: screenHeight(context) * 0.2,
              // width: screenWidth(context) * 0.5,
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  CircleAvatar(
                    radius: screenWidth(context) * 0.2,
                    backgroundColor: Colors.white,
                    child: image != null
                        ? CircleAvatar(
                            radius: screenWidth(context) * 0.2,
                            backgroundColor: Colors.white,
                            backgroundImage: FileImage(image!))
                        : CircleAvatar(
                            radius: screenWidth(context) * 0.2,
                            backgroundColor: Colors.white,
                            backgroundImage: const NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-handsome-young-man-with-crossed-arms_176420-15569.jpg?w=1380&t=st=1666527712~exp=1666528312~hmac=d04a46271a4c69241a3e590be8cb292f6c47fbb3f587402a837d963a3ad30344"),
                          ),
                  ),
                  InkWell(
                    onTap: () async {
                      await getImage();
                    },
                    child: CircleAvatar(
                      radius: screenWidth(context) * 0.05,
                      backgroundColor: Colors.white60,
                      child: Center(
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 30,
                          color: mal3abColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          const VerticalSpace(value: 2),
          CustomTextFormField(
              controller: fullName,
              validator: (value) => validateName(value!),
              focusNode: fullNameFocuse,
              errorTextColor: Colors.red,
              hint: '  Full Name',
              inputType: TextInputType.name,
              onEditingComplete: () {
                fullNameFocuse.unfocus();
                FocusScope.of(context).requestFocus(phoneFocuse);
              }),
          const VerticalSpace(value: 1.5),
          CustomTextFormField(
              controller: phone,
              errorTextColor: Colors.red,
              validator: (value) => validate(value!),
              focusNode: phoneFocuse,
              hint: '  Mobile Number',
              inputType: TextInputType.phone,
              onEditingComplete: () {
                phoneFocuse.unfocus();
                FocusScope.of(context).requestFocus(emailFocuse);
              }),
          const VerticalSpace(value: 1.5),
          CustomTextFormField(
              errorTextColor: Colors.red,
              controller: email,
              validator: (value) => validate(value!),
              focusNode: emailFocuse,
              hint: '  Email Address',
              inputType: TextInputType.emailAddress,
              onEditingComplete: () {
                emailFocuse.unfocus();
                FocusScope.of(context).requestFocus(cityFocuse);
              }),
          const VerticalSpace(value: 1.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: screenWidth(context) * 0.42,
                child: CustomTextFormField(
                    errorTextColor: Colors.red,
                    controller: city,
                    validator: (value) => validateCity(value!),
                    focusNode: cityFocuse,
                    hint: '  City',
                    inputType: TextInputType.name,
                    onEditingComplete: () {
                      cityFocuse.unfocus();
                      FocusScope.of(context).requestFocus(placeFocuse);
                    }),
              ),
              SizedBox(
                width: screenWidth(context) * 0.42,
                child: CustomTextFormField(
                    errorTextColor: Colors.red,
                    controller: place,
                    validator: (value) => validatePlace(value!),
                    focusNode: placeFocuse,
                    hint: '  Place',
                    inputType: TextInputType.name,
                    onEditingComplete: () {
                      placeFocuse.unfocus();
                      FocusScope.of(context).requestFocus(passwordFocuse);
                    }),
              ),
            ],
          ),
          const VerticalSpace(value: 1.5),
          CustomTextFormField(
              errorTextColor: Colors.red,
              controller: password,
              // validator: (value) => validatePassword(value!),
              focusNode: passwordFocuse,
              hint: '  Password',
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
              }),
          const VerticalSpace(value: 1),
          // BlocConsumer<AuthCubit, AuthState>(
          //   listener: (context, state) {},
          //   bloc: GetIt.I<AuthCubit>(),
          //   builder: (context, state) {
          //     return (state is! UpdateProfileLoadingState)
          //         ?

          //         : loading(Colors.white);
          //   },
          // ),
          CustomGeneralButton(
            text: 'Edit',
            height: 45,
            textColor: Colors.white,
            // borderColor: goldColor,
            fontSize: 18,
            onTap: () {
              // if (formKey.currentState!.validate()) {
              //   GetIt.I<AuthCubit>().postUpdateProfile(
              //       name: fullName.text,
              //       phone: phone.text,
              //       email: email.text,
              //       image: (imageApi != '')
              //           ? MultipartFile.fromFileSync(imageApi)
              //           : '',
              //       password: password.text,
              //       city: city.text,
              //       place: place.text);
              //   // MagicRouter.navigateTo(const CodeScreen());
              // }
            },
            color: mal3abColor,
            borderRadius: 25,
          ),
          const VerticalSpace(value: 2.5),
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
    );
    //  Form(
    //   key: formKey,
    //   child: BlocConsumer<AuthCubit, AuthState>(
    //     listener: (context, state) {},
    //     bloc: GetIt.I<AuthCubit>(),
    //     builder: (context, state) {
    //       return (GetIt.I<AuthCubit>().getProfileModel != null)
    //           ?

    //           : loading(mal3abColor);
    //     },
    //   ),
    // );
  }

  ////////////////////////////////////////////////////////////
}
