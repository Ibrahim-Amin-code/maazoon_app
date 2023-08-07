import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/auth/reset_password/widget/reset_password_body.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(
        title: 'نسيت كلمة المرور',
        context: context,
      ),
      body:  const ResetPasswordBody()
    );
  }
}
