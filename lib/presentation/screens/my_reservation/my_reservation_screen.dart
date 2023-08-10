import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/my_reservation/widget/my_reservation_body.dart';

class MyResrvationScreen extends StatefulWidget {
  const MyResrvationScreen({super.key, });

  @override
  State<MyResrvationScreen> createState() => _MyResrvationScreenState();
}

class _MyResrvationScreenState extends State<MyResrvationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarLayout(title: 'حجوزاتي', context: context),
      body:  const MyResrvationBody(),
    );
  }
}
