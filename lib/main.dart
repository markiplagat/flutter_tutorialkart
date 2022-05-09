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
        child: ListView(
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.lime[800],
              child: const Center(child: Text('Apple')),
            ),
            Container(
              height: 50,
              color: Colors.lime[600],
              child: const Center(child: Text('Banana')),
            ),
            Container(
              height: 50,
              color: Colors.lime[400],
              child: const Center(child: Text('Mango')),
            ),
            Container(
              height: 50,
              color: Colors.lime[200],
              child: const Center(child: Text('Orange')),
            )
            ],
        )
    );
  }
}
