import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:islami/modules/hadeth/hadeth_view.dart';
import 'package:islami/modules/quran/quran_view.dart';
import 'package:islami/modules/radio/radio_view.dart';
import 'package:islami/modules/settings/settings_view.dart';
import 'package:islami/modules/tasbeh/tasbeh_view.dart';

class LayoutView extends StatefulWidget {
  static String routeName = "layout";

  const LayoutView({super.key});

  @override
  State<StatefulWidget> createState() => LayoutViewState();

}
class LayoutViewState extends State<LayoutView>{

  int selectedIndex = 0;
  List<Widget> screensList = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  get fit => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Image.asset("assets/images/home_background.png",
            fit: BoxFit.cover,
          ),
          Scaffold(
            appBar: AppBar(
              title: Text(
                  "إسلامي"
              ),
              centerTitle: true,
            ),
            body: screensList[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value){
                selectedIndex = value;
                setState(() {});
              },
              items: const[
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/icons/quran_icn.png")),
                    label: "Quran"
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/icons/hadith_icn.png")),
                    label: "Hadith"
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/icons/sebha_icn.png")),
                    label: ("Tasbeeh")
                ),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage("assets/icons/radio_icn.png")),
                    label: "Radio"
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings"
                ),
              ],
            ),
          ),
        ]
        );
    }
  }