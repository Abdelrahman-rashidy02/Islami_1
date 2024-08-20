import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:islami/layout/layout_view.dart';

class splashView extends StatefulWidget {
  const splashView({super.key});


  @override
  State<StatefulWidget> createState() => SplashViewState();

}

class SplashViewState extends State<splashView> {

  static String routeName = "/";

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.routeName);
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
        "assets/images/splash_background.png",
        fit: BoxFit.cover,
        );
    }
}