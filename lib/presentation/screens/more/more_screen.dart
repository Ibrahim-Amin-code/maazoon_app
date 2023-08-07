import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/presentation/screens/more/widget/more_body.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarLayout(title: 'المزيد', context: context),
      body: const MoreBody(),
    );
  }
}
