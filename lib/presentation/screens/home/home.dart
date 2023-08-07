import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/presentation/screens/home/widget/home_page_body.dart';
import 'package:maazoon_app/presentation/screens/home/widget/home_widgets.dart';

import '../notification/notification_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Scaffold(
          
          appBar: PreferredSize(
              preferredSize: Size(
                screenWidth(context),
                screenHeight(context) * 0.3,
              ),
              child: BuildNotificationRow(
                onTap: () => MagicRouter.navigateTo(const NotificationScreen()),
              )),
          backgroundColor: MazzoonColor,
          body: const HomeBody(),
        ),
        const IntroImage(),
      ],
    );
  }
}
