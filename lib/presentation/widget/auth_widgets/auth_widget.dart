// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

void showGoverMenu({
  required context,
  required double w,
  required List list,
  required RelativeRect positioned,
}) async {
  await showMenu(
    context: context,
    position: positioned, //Map((String choice)
    items: list.map((choice) {
      return PopupMenuItem(
        value: choice.nameEN.toString(),
        child: InkWell(
          onTap: () async {
            Navigator.pop(context);
            print("------------------------------------------" +
                choice.nameEN.toString());
          },
          child: Text(
            choice.nameEN.toString(),
            style: TextStyle(
                color: Colors.black,
                fontSize: w * 0.04,
                fontWeight: FontWeight.w400,
                fontFamily: 'Tajawal'),
          ),
        ),
      );
    }).toList(),
    elevation: 8.0,
  );
}

void showCitysMenu({
  required context,
  required double w,
  required List list,
}) async {
  await showMenu(
    context: context,
    position: const RelativeRect.fromLTRB(300, 380, 0, 100),
    items: list.map((choice) {
      return PopupMenuItem(
        value: choice.nameEN.toString(),
        child: InkWell(
          onTap: () async {
            prefs.setInt('city_id', choice.id);
            prefs.setString('city_nameEN', choice.nameEN.toString());
            prefs.setString('city_nameAR', choice.nameAR.toString());
          },
          child: Text(
            choice.nameEN.toString(),
            style: TextStyle(
                color: Colors.black,
                fontSize: w * 0.04,
                fontWeight: FontWeight.w400,
                fontFamily: 'Tajawal'),
          ),
        ),
      );
    }).toList(),
    elevation: 8.0,
  );
}
