// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:maazoon_app/presentation/screens/layout/layout.dart';
import '../../../core/constants/constants.dart';
import '../../../core/router/router.dart';
import '../auth/signup_Or_login/login_or_signup.dart';

class SplashScreen extends StatefulWidget {
  static double startLatitude = 0.0;
  static double startLongitude = 0.0;

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final location = Location();

  getLocation() async {
    var _serviceEnabled = await location.serviceEnabled();

    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    var _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();

      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }
    var currentLocation = await location.getLocation();
    setState(() {
      SplashScreen.startLatitude = currentLocation.latitude!;
      SplashScreen.startLongitude = currentLocation.longitude!;
      String userLocation =
          '${currentLocation.latitude!} ${currentLocation.longitude!}';
      print(userLocation);
    });
  }

  @override
  void initState() {
    getLocation();

    isFirstTime();
    Timer(const Duration(seconds: 3),
        () => MagicRouter.navigateAndPopAll(screen));
    super.initState();
  }

  Widget screen = const LoginOrSignUpScreen();

  void isFirstTime() {
    if (prefs.getString('token') != null && prefs.getString('token') != null) {
      screen = const LayoutScreen(
        index: 0,
      );
    } else {
      screen = screen;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'asset/icons/cr7.png',
              width: screenWidth(context) * 1.5,
              height: screenHeight(context) * 0.55,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
