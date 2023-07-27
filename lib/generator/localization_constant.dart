// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

import '../core/constants/constants.dart';

Future<Locale> setLocale(String languageCode) async {
  prefs.setString('lang', languageCode);
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  Locale temp;
  switch (languageCode) {
    case 'ar':
      temp = const Locale('ar', '');
      break;
    case 'en':
      temp = const Locale('en', '');
      break;
    // default:
    //   temp = const Locale('ar', '');
    default:
      temp = const Locale('en', '');
  
  }
  return temp;
}

Future<Locale> getLocale() async {
  Locale temp;
  String languageCode = prefs.getString('lang') ?? "en";
  return temp = _locale(languageCode);
}
