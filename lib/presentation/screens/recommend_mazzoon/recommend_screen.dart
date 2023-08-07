import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/recommend_mazzoon/widget/recommend_body.dart';

import '../../../../../core/constants/colors.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(title: "رشح لى مأذون", context: context),
      body: const RecommendBody(),
    );
  }
}
