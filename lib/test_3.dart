import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Readmore and less in Flutter App'),
        ),
        body: ShowMoreText(),
      ),
    );
  }
}

class ShowMoreText extends StatefulWidget {
  @override
  _ShowMoreTextState createState() => _ShowMoreTextState();
}

class _ShowMoreTextState extends State<ShowMoreText> {
  bool _isTextExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser, Fuchsia, Android, iOS, Linux, macOS, and Windows. First described in 2015, Flutter was released in May 2017. Dart is a programming language designed by Lars Bak and Kasper Lund and developed by Google. The programming language can be used to develop web and mobile apps as well as server and desktop applications. It is an object-oriented, class-based, garbage-collected language with C-style syntax.',
            maxLines: _isTextExpanded ? null : 3,
            overflow: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isTextExpanded = !_isTextExpanded;
              });
            },
            child: Text(
              _isTextExpanded ? 'Show More' : 'Show Less',
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
