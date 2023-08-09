import 'package:flutter/material.dart';
import 'package:maazoon_app/core/constants/constants.dart';
import 'package:maazoon_app/core/router/router.dart';
import 'package:maazoon_app/presentation/screens/splash/splash.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;
  Animation? _sizeAnimation;

  bool visible = true;
  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                visible = !visible;
              });
              Future.delayed(
                const Duration(milliseconds: 500),
                () => MagicRouter.navigateAndPopAll(
                  const SplashScreen(),
                ),
              );
              // _animationController!.repeat(reverse: false);
            }
          });

    _sizeAnimation = Tween<double>(
      begin: 30.0,
      end: 2000.0,
    ).animate(_animationController!);
    _animationController!.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarNoTitle(),
      body: AnimatedBuilder(
        animation: _sizeAnimation!,
        builder: (context, child) => AnimatedOpacity(
          opacity: visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Center(
            child: SizedBox(
              width: _sizeAnimation!.value,
              height: _sizeAnimation!.value,
              child: Image.asset(
                "asset/images/LOGO.png",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
