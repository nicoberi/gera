import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:readmore/readmore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                centerTitle: true,
                title: const Text("Readmore and less in Flutter App")),
            body: const ReadMoreText(
              "fluteri aris ragac yleoba guglisgan mofiqrebuli karoche ra da am yleobas tu ar viswavli magari dandzreuli maqvs ra",
              trimLines: 2,
              trimMode: TrimMode.Line,
              lessStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              moreStyle:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
              trimCollapsedText: "show more",
              trimExpandedText: "show less",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 18),
            )));
  }
}
