import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Show More/Show Less',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Show More/Show Less'),
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
  bool _isTextVisible = false;

  void _toggleTextVisibility() {
    setState(() {
      _isTextVisible = !_isTextVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: _toggleTextVisibility,
              child: Text(_isTextVisible ? 'Show Less' : 'Show More'),
            ),
            SizedBox(height: 10),
            if (_isTextVisible)
              Text(
                'Here is the text that will be shown or hidden.',
                style: TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
