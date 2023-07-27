// // ignore_for_file: deprecated_member_use, avoid_print
// import 'package:a3lan/presentation/screens/messages/record_audio/globals.dart';
// import 'package:api_request/api_request.dart';
// import 'package:bloc/bloc.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'core/constants/colors.dart';
// import 'core/constants/constants.dart';
// import 'core/network/appbinding.dart';
// import 'core/router/router.dart';
// import 'core/utiles/bloc_observer.dart';
// import 'generator/codegen_loader.dart';
// import 'generator/localization_constant.dart';
// import 'presentation/screens/splash/splash.dart';

// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print('Handling a background message ');
//   await Firebase.initializeApp();
// }

// ////////////////////////////////////////////////////////////////////////////////////////////////
// late AndroidNotificationChannel channel;
// late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
// ///////////////////////////////////////////////////////////////////////////////////////////////

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Globals.init();
//   await AppBinding.initAsyncDependebcies();
//   ApiRequestOptions.instance?.config(
//     baseUrl: 'https://nairgo.com/api',
//     tokenType: ApiRequestOptions.bearer,
//     getToken: () => prefs.getString('token') ?? '',
//     enableLog: true,
//     defaultHeaders: {
//       "HTTP_ACCEPT_LANGUAGE": prefs.getString("lang") == "ar"
//           ? "ar"
//           : (prefs.getString("lang") == "tr")
//               ? "tr"
//               : "en"
//     },
//   );
//   final firebaseToken = await FirebaseMessaging.instance.getToken();
//   SharedPreferences sp = await SharedPreferences.getInstance();
//   sp.setString('firebase_token', firebaseToken.toString());
//   print(firebaseToken);
//   FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
//   channel = const AndroidNotificationChannel(
//       'high_importance_channel', // id
//       'High Importance Notifications', // title
//       importance: Importance.max);

//   flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

//   await flutterLocalNotificationsPlugin
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);

//   await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//     alert: true,
//     badge: true,
//     sound: true,
//   );

//   BlocOverrides.runZoned(
//     () => runApp(
//       EasyLocalization(
//         supportedLocales: const [
//           Locale('en', ''),
//           Locale('ar', ''),
//           Locale('tr', ''),
//         ],
//         path: 'asset/translation',
//         assetLoader: const CodegenLoader(),
//         child: const MyApp(),
//       ),
//     ),
//     blocObserver: MyBlocObserver(),
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   setLocals(Locale locale) async {
//     setState(() {
//       context.locale = locale;
//     });
//     print('Applan:$locale');
//   }

//   @override
//   void didChangeDependencies() {
//     getLocale().then((locale) {
//       setState(() {
//         context.locale = locale;
//       });
//     });
//     super.didChangeDependencies();
//   }

//   @override
//   void initState() {
//     super.initState();
//     FirebaseMessaging.instance
//         .getInitialMessage()
//         .then((RemoteMessage? message) {
//       if (message != null) {
//         RemoteNotification? notification = message.notification;
//         AndroidNotification? android = message.notification?.android;
//         if (notification != null && android != null && !kIsWeb) {
//           flutterLocalNotificationsPlugin.show(
//               notification.hashCode,
//               notification.title,
//               notification.body,
//               NotificationDetails(
//                 android: AndroidNotificationDetails(channel.id, channel.name,
//                     icon: '@mipmap/ic_launcher', importance: Importance.high),
//               ));
//         }

//         var data = message.data;
//         print(data);
//         print("firebase data ----------------------------- : $data");
//       }
//     });
// ////////////////////////////////////////////////////////////////////////////////////////////////////////
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null && !kIsWeb) {
//         flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             NotificationDetails(
//               android: AndroidNotificationDetails(channel.id, channel.name,
//                   icon: '@mipmap/ic_launcher', importance: Importance.high),
//             ));
//       }

//       var data = message.data;
//       print(data);

//       print("firebase data ----------------------------- : $data");
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null && !kIsWeb) {
//         flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             NotificationDetails(
//               android: AndroidNotificationDetails(channel.id, channel.name,
//                   icon: '@mipmap/ic_launcher', importance: Importance.high),
//             ));
//       }
//       print('A new onMessageOpenedApp event was published!');
//       // var val;
//       var data = message.data;
//       print(data);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'A3len',
//       debugShowCheckedModeBanner: false,
//       navigatorKey: navigatorKey,
//       onGenerateRoute: onGenerateRoute,
//       localizationsDelegates: context.localizationDelegates,
//       supportedLocales: context.supportedLocales,
//       locale: context.locale,
//       // localeResolutionCallback: (locale, supportedLocales) {
//       //   for (var locale in supportedLocales) {
//       //     if (prefs.getString("lang") != null) {
//       //       if (locale.languageCode == Platform.localeName.split('_')[0]) {
//       //         prefs.setString("lang", locale.languageCode);
//       //         setLocale(Platform.localeName.split('_')[0]);
//       //         print("locale:$locale");
//       //         return locale;
//       //       } else {
//       //         return supportedLocales.first;
//       //       }
//       //     } else {
//       //       if (locale.languageCode == prefs.getString("lang")) {
//       //         return locale;
//       //       } else {
//       //         return supportedLocales.first;
//       //       }
//       //     }
//       //   }
//       // },
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         fontFamily: "Tajawal",
//         scaffoldBackgroundColor: backgroundColor,
//         backgroundColor: Colors.white,
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Colors.white,
//           iconTheme: IconThemeData(color: Colors.black),
//         ),
//         bottomNavigationBarTheme:
//             const BottomNavigationBarThemeData(backgroundColor: Colors.white),
//       ),
//       home: const SplashScreen(),
//     );
//   }
// }
