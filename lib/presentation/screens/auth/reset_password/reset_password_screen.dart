import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/auth/reset_password/widget/reset_password_body.dart';

import '../../../../core/constants/colors.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/icons/ground.png'))),
      child: Scaffold(
        backgroundColor: mal3abColor.withOpacity(0.8),
        body: const ResetPasswordBody(),
      ),
    );
  }
}
