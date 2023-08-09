// ignore_for_file: deprecated_member_use, avoid_print
import 'package:api_request/api_request.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maazoon_app/core/constants/theme.dart';
import 'package:maazoon_app/presentation/screens/splash/firstScreen.dart';
import 'core/constants/constants.dart';
import 'core/network/appbinding.dart';
import 'core/router/router.dart';
import 'core/utiles/bloc_observer.dart';
import 'generator/codegen_loader.dart';
import 'generator/localization_constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      theme: themeData,
      home: const FirstScreen(),
    );
  }
}
