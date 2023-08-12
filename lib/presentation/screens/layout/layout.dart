// ignore_for_file: deprecated_member_use
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:maazoon_app/core/constants/colors.dart';
import 'package:maazoon_app/generator/locale_keys.dart';
import 'package:maazoon_app/presentation/screens/more/more_screen.dart';
import '../home/home.dart';
import '../my_reservation/my_reservation_screen.dart';

class LayoutScreen extends StatefulWidget {
  final int? index;
  const LayoutScreen({Key? key, this.index}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;

  static const List<Widget> screens = <Widget>[
    HomePage(),
    MyResrvationScreen(),
    MoreScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   toolbarHeight: 0.0,
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.transparent,
      //     statusBarIconBrightness: Brightness.dark,
      //     systemNavigationBarIconBrightness: Brightness.dark,
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xffF0F0F0),
        selectedLabelStyle: const TextStyle(),
        elevation: 0.0,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Image.asset(
                    'asset/images/Vector (1).png',
                  )
                : Image.asset(
                    'asset/images/Home Angle 2.png',
                  ),
            label: LocaleKeys.home.tr(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Image.asset(
                    'asset/images/Calendar1.png',
                  )
                : Image.asset(
                    'asset/images/Calendar.png',
                  ),
            label: LocaleKeys.my_reservation.tr(),
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Image.asset('asset/images/Widget 22.png')
                : Image.asset('asset/images/Widget 2.png'),
            label: LocaleKeys.more.tr(),
          ),
        ],
        selectedItemColor: MazzoonColor,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
    );
  }
}
