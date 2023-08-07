import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import 'body.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({
    Key? key,
    required this.titleAppBar,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);
  final String titleAppBar;
  final String buttonText;
  final void Function() onTap;

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MazzoonColor,
      appBar: customAppbar(
        title: widget.titleAppBar,
        context: context,
      ),
      body: CodeBody(buttonText: widget.buttonText, onTap: widget.onTap),
    );
  }
}
