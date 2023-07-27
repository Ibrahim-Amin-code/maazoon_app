// // ignore_for_file: deprecated_member_use
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get_it/get_it.dart';
// import 'package:mal3ab/core/constants/colors.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
// import '../../../core/constants/constants.dart';

// import '../auth/cubit/auth_cubit.dart';
// import '../challenges_list/challenges_list.dart';
// import '../home/home.dart';
// import '../league/league_screen.dart';
// import '../profile/profile.dart';
// import '../reservation/reservation_screen.dart';

// class LayoutScreen extends StatefulWidget {
//   final int? index;
//   const LayoutScreen({Key? key, this.index}) : super(key: key);

//   @override
//   State<LayoutScreen> createState() => _LayoutScreenState();
// }

// class _LayoutScreenState extends State<LayoutScreen> {
//   PersistentTabController? controller;
//   int currentIndex = 0;

//   List<PersistentBottomNavBarItem> _navBarsItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: Image.asset("asset/icons/homeIcon.png"),
//         title: "Home",
//         activeColorPrimary: mal3abColor,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset('asset/icons/list.png'),
//         title: "challenges",
//         activeColorPrimary: mal3abColor,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset('asset/icons/add.png'),
//         title: "Add",
//         activeColorPrimary: mal3abColor,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset("asset/icons/ball1.png"),
//         title: "League",
//         activeColorPrimary: mal3abColor,
//         inactiveColorPrimary: Colors.grey,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Image.asset('asset/icons/profile.png'),
//         title: "Profile",
//         activeColorPrimary: mal3abColor,
//         inactiveColorPrimary: Colors.grey,
//       ),
//     ];
//   }

//   List<Widget> _buildScreens() {
//     return const [
//       HomePage(),
//       ChallengesList(),
//       ReservationScreen(),
//       LeagueScreen(),
//       UserProfileScreen()
//     ];
//   }

//   @override
//   void initState() {
//     controller = PersistentTabController(initialIndex: widget.index ?? 0);
//     GetIt.I<AuthCubit>().getProfile();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         toolbarHeight: 0.0,
//         systemOverlayStyle: const SystemUiOverlayStyle(
//           statusBarColor: Colors.white,
//           statusBarIconBrightness: Brightness.dark,
//           systemNavigationBarIconBrightness: Brightness.dark,
//         ),
//       ),
//       body: PersistentTabView(
//         context,
//         controller: controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         onItemSelected: (value) {
//           setState(() {
//             currentIndex = value;
//           });

//           if (value == 4) {
//             GetIt.I<AuthCubit>().getProfile();
//           }
//           //   else if (value == 2) {
//           //     GetIt.I<SettingCubit>().getCustomPage();
//           //     GetIt.I<SettingCubit>().getSettingData();
//           //   } else if (value == 0) {
//           //     GetIt.I<ProfileCubit>().getUserProfile();
//           //   }
//           // } else {
//           //   if (value == 2) {
//           //     GetIt.I<SettingCubit>().getCustomPage();
//           //     GetIt.I<SettingCubit>().getSettingData();
//           //   } else if (value == 1 || value == 3 || value == 0) {
//           //     GetIt.I<ProfileCubit>().getUserProfile();
//           // }
//         },
//         confineInSafeArea: true,
//         backgroundColor: Colors.white,
//         popAllScreensOnTapAnyTabs: true,
//         handleAndroidBackButtonPress: true,
//         resizeToAvoidBottomInset: true,
//         stateManagement: true,
//         hideNavigationBarWhenKeyboardShows: false,
//         decoration: const NavBarDecoration(
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
//           colorBehindNavBar: Colors.white,
//         ),
//         popAllScreensOnTapOfSelectedTab: true,
//         popActionScreens: PopActionScreensType.all,
//         itemAnimationProperties: const ItemAnimationProperties(
//           duration: Duration(milliseconds: 200),
//           curve: Curves.ease,
//         ),
//         screenTransitionAnimation: const ScreenTransitionAnimation(
//           animateTabTransition: true,
//           curve: Curves.ease,
//           duration: Duration(milliseconds: 200),
//         ),
//         navBarStyle: NavBarStyle.style15,
//       ),
//     );
//   }
// }
