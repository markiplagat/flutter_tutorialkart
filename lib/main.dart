import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter Tutorial";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            primary: false,
            padding: const EdgeInsets.all(20),
            children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Text 1"),
            color: Colors.orange[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Text 2"),
            color: Colors.green[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Text 3"),
            color: Colors.red[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Text 4"),
            color: Colors.purple[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Text 5"),
            color: Colors.indigo[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Text 6"),
            color: Colors.yellow[200],
          )
        ]));
  }
}
