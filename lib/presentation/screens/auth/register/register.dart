import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/auth/register/widget/body.dart';

import '../../../../core/constants/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: MazzoonColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          iconTheme: IconThemeData(color: Colorblack),
          title: Text(
            'انشاء حساب  جديد',
            style: headingStyle.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: MediaQuery.of(context).size.width * 0.055),
          ),
          actions:
              // (!atHome)
              // ?
              [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                'asset/images/Alt Arrow Right.png',
                width: 30,
              ),
            ),
          ]
          // : null,
          ),
      body: const RegisterBody(),
    );
  }
}
