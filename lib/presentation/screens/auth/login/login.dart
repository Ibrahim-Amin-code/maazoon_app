import 'package:flutter/material.dart';
import 'package:maazoon_app/presentation/screens/auth/login/widget/body.dart';

import '../../../../core/constants/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/icons/ground.png'))),
      child: Scaffold(
        backgroundColor: mal3abColor.withOpacity(0.8),
        body: const LoginBody(),
      ),
    );
  }
}
