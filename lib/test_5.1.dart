import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('Start'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> khinkali = [];

  void _addKhinkali() {
    setState(() {
      khinkali.add(
          'https://static.tildacdn.one/tild3966-3366-4532-b736-346131313234/Hinkali-dostavka-mos.png');
      if (khinkali.length > 5) {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
              'https://st3.depositphotos.com/6009652/12717/v/450/depositphotos_127170592-stock-illustration-caucasian-man-in-national-dress.jpg'), // Замените на нужный вам путь к изображению
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: khinkali.length,
              itemBuilder: (context, index) {
                return Image.asset(khinkali[index]);
              },
            ),
          ),
          ElevatedButton(
            onPressed: _addKhinkali,
            child: Text('Khinkali'),
          ),
        ],
      ),
    );
  }
}
