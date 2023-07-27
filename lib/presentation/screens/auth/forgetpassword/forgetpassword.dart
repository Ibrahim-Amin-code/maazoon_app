import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/auth/forgetpassword/widget/body.dart';

import '../../../../core/constants/colors.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/icons/ground.png'))),
      child: Scaffold(
        backgroundColor: mal3abColor.withOpacity(0.8),
        body: const ForgetPasswordBody(),
      ),
    );
  }
}
