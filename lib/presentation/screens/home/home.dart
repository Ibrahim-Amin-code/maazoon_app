import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:maazoon_app/presentation/screens/home/widget/home_page_body.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // void initState() {
  //   GetIt.I<AuthCubit>().getProfile();

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}
