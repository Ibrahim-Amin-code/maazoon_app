import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';

class SocialContact extends StatelessWidget {
  const SocialContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('asset/images/Whatsapp.png'),
                  Image.asset('asset/images/Twitter.png'),
                  Image.asset('asset/images/Instagram.png'),
                  Image.asset('asset/images/facebook-f.png'),
                ],
              ),
            )
;
  }
}