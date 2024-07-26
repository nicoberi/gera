import 'package:flutter/material.dart';

class Khinkali extends StatefulWidget {
  const Khinkali({super.key});

  @override
  State<Khinkali> createState() => _KhinkaliState();
}

class _KhinkaliState extends State<Khinkali> {
  List<String> khinkaliList = [];

  void _addKhinkali() {
    setState(() {
      khinkaliList.add(
          'assets/khinkali.png'); // предположим, что картинка хинкали лежит в assets
      if (khinkaliList.length > 5) {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Khinkali bijooo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (khinkaliList.isEmpty)
            const Center(
              child: Text("Нажмите кнопку, чтобы добавить хинкали"),
            ),
          for (var khinkali in khinkaliList)
            Image.asset(
              khinkali,
              height: 100,
              width: 100,
            ),
          ElevatedButton(
            onPressed: _addKhinkali,
            child: const Text("Добавить хинкали"),
          ),
        ],
      ),
    );
  }
}
