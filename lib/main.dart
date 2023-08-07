// ignore_for_file: deprecated_member_use, avoid_print

import 'package:api_request/api_request.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maazoon_app/presentation/screens/auth/register/register.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/constants/colors.dart';
import 'core/constants/constants.dart';
import 'core/network/appbinding.dart';
import 'core/router/router.dart';
import 'core/utiles/bloc_observer.dart'; //01207070972
import 'generator/codegen_loader.dart';
import 'generator/localization_constant.dart';
import 'presentation/screens/splash/splash.dart';

// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print('Handling a background message ');
//   await Firebase.initializeApp();
// }

////////////////////////////////////////////////////////////////////////////////////////////////
// late AndroidNotificationChannel channel;
// late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Globals.init();
  await AppBinding.initAsyncDependebcies();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
    ),
  );

  ApiRequestOptions.instance?.config(
    baseUrl: 'https://mal3aby.dlt-development.net/api',
    tokenType: ApiRequestOptions.bearer,
    getToken: () => prefs.getString('token') ?? '',
    enableLog: true,
    // defaultHeaders: {
    //   "lang": prefs.getString("lang") == "ar"
    //       ? "ar"
    //       : (prefs.getString("lang") == "tr")
    //           ? "tr"
    //           : "en"
    // },
  );

  // final firebaseToken = await FirebaseMessaging.instance.getToken();
  // SharedPreferences sp = await SharedPreferences.getInstance();
  // sp.setString('firebase_token', firebaseToken.toString());
  // print(firebaseToken);
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  // channel = const AndroidNotificationChannel(
  //     'high_importance_channel', // id
  //     'High Importance Notifications', // title
  //     importance: Importance.max);

  // flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // await flutterLocalNotificationsPlugin
  //     .resolvePlatformSpecificImplementation<
  //         AndroidFlutterLocalNotificationsPlugin>()
  //     ?.createNotificationChannel(channel);

  // await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
  //   alert: true,
  //   badge: true,
  //   sound: true,
  // );
///////////////////////////////////////////////////////////////////////////////////////////////

  BlocOverrides.runZoned(
    () => runApp(
      EasyLocalization(
        supportedLocales: const [
          Locale('ar', ''),
          Locale('en', ''),
          // Locale('tr', ''),
        ],
        path: 'asset/translation',
        assetLoader: const CodegenLoader(),
        child: const MyApp(),
      ),
    ),
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  setLocale(Locale locale) async {
    setState(() {
      context.locale = locale;
    });
    print('Applan:$locale');
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        context.locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  // @override
  // void initState() {
  //   super.initState();
  //   FirebaseMessaging.instance
  //       .getInitialMessage()
  //       .then((RemoteMessage? message) {
  //     if (message != null) {
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
  //     }
  //   });
////////////////////////////////////////////////////////////////////////////////////////////////////////
  // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  //   RemoteNotification? notification = message.notification;
  //   AndroidNotification? android = message.notification?.android;
  //   if (notification != null && android != null && !kIsWeb) {
  //     flutterLocalNotificationsPlugin.show(
  //         notification.hashCode,
  //         notification.title,
  //         notification.body,
  //         NotificationDetails(
  //           android: AndroidNotificationDetails(channel.id, channel.name,
  //               icon: '@mipmap/ic_launcher', importance: Importance.high),
  //         ));
  //   }

  //   var data = message.data;
  //   print(data);

  //   print("firebase data ----------------------------- : $data");
  // });

  // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //   RemoteNotification? notification = message.notification;
  //   AndroidNotification? android = message.notification?.android;
  //   if (notification != null && android != null && !kIsWeb) {
  //     flutterLocalNotificationsPlugin.show(
  //         notification.hashCode,
  //         notification.title,
  //         notification.body,
  //         NotificationDetails(
  //           android: AndroidNotificationDetails(channel.id, channel.name,
  //               icon: '@mipmap/ic_launcher', importance: Importance.high),
  //         ));
  //   }
  //   print('A new onMessageOpenedApp event was published!');
  //   // var val;
  //   var data = message.data;
  //   print(data);
  // });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaaZoon',
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Cairo",
        // "(A) Arslan Wessam A (A) Arslan Wessam A",
        scaffoldBackgroundColor: backgroundColor,
        backgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(backgroundColor: Colors.white),
      ),
      home: const RegisterScreen(),
    );
  }
}
