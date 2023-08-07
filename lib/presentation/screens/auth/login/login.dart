import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/auth/login/widget/body.dart';

import '../../../../core/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(
            screenWidth(context),
            screenHeight(context) * 0.4,
          ),
          child: loginAppBar(context)),
      body: const LoginBody(),
    );
  }
}

Widget loginAppBar(context) => Container(
      width: screenWidth(context),
      height: screenHeight(context) * 0.4,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'asset/images/Frame 127.png',
            ),
            fit: BoxFit.cover),
      ),
      child: Center(
          child: Image.asset(
        'asset/images/LOGO.png',
        height: screenHeight(context) * 0.07,
        width: screenWidth(context) * 0.4,
      )),
    );
