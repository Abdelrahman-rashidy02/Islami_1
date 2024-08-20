import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/modules/quran/quran_view.dart';

class QuranDetailsView extends StatefulWidget {

  static const String routeName = "QuranDetailsView";

   QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {


   var data = ModalRoute.of(context)?.settings.arguments as SuraData;
    var theme = Theme.of(context);


   if(content.isEmpty) loadData(data.suraNumber);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                "assets/images/home_background.png",
            ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
              "إسلامي",
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 10,
            bottom: 80,
            left: 30,
            right: 30,

          ),
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 30,
            right: 30,

          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF8F8F8).withOpacity(0.85),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "سورة ${data.suraNames}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              Divider(),
              Expanded(child:
              ListView.builder(itemBuilder: (context, index) => Text(
                "${index + 1}${versesList[index]}",
                textAlign: TextAlign.center,
              ),
                itemCount: versesList.length,
              ),
              ),

              // Text(
              //   content,
              //   textAlign: TextAlign.center,
              //   style: theme.textTheme.bodySmall?.copyWith(
              //     height: 1.8,
              //   ),

            ],
          ),
        ),
      ),
    );
  }

  String content = "";
  List<String> versesList = [];

  Future<void> loadData(String suraNumber) async {
    String content = await rootBundle.loadString("assets/files/$suraNumber");
    versesList = content.split("\n");
    setState(() {});
    print(content);
}
}



// git & github

// 1- versioned files
    // * have no update
    // * have update (blue)
// 2- unVersioned files

// commit (store copy of code local)

// green: is tracked but don't add at local