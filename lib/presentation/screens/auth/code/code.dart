import 'package:flutter/material.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/constants.dart';
import 'body.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key,required this.isfromregister}) : super(key: key);
    final bool isfromregister;
  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('asset/icons/ground.png'))),
      child: Scaffold(
        backgroundColor: mal3abColor.withOpacity(0.85),
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Verification Step',
            style: headingStyle.copyWith(
                fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_ios,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        body:  CodeBody(isfromregister: widget.isfromregister),
      ),
    );
  }
}
