import 'package:flutter/material.dart';
import 'package:islami/core/application_theme_manager.dart';
import 'package:islami/layout/layout_view.dart';
import 'package:islami/modules/quran/quran_details_view.dart';
import 'package:islami/modules/splash/splash_view.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter Demo",
        theme: ApplicationThemeData.lightThemeData,
        debugShowCheckedModeBanner: false,
        initialRoute: "/",      // First Screen
        routes: {
    SplashViewState.routeName : (context) => const splashView(),
    LayoutView.routeName : (context) => const LayoutView(),
          QuranDetailsView.routeName : (context) =>  QuranDetailsView(),
    },
        );
    }
}