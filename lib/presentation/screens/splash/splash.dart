// ignore_for_file: no_leading_underscores_for_local_identifiers, avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:maazoon_app/presentation/screens/auth/login/login.dart';
import '../../../core/constants/constants.dart';
import '../../../core/router/router.dart';

class SplashScreen extends StatefulWidget {
  static double? startLatitude;
  static double? startLongitude;

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

    Timer(const Duration(milliseconds: 500),
        () => MagicRouter.navigateAndPopAll(screen));
    super.initState();
  }

  Widget screen = const LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Image.asset(
        'asset/images/Home.png',
        width: screenWidth(context),
        height: screenHeight(context),
        fit: BoxFit.cover,
      ),
    );
  }
}
