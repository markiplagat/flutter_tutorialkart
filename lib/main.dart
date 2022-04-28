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
    return Scaffold(
      body: ListView(children: <Widget>[
        DataTable(columns: const [
          DataColumn(label: Text('No')),
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Class')),
        ], rows: const [
          DataRow(cells: [
            DataCell(Text('1')),
            DataCell(Text('Mark')),
            DataCell(Text('8'))
          ]),
          DataRow(cells: [
            DataCell(Text('2')),
            DataCell(Text('John')),
            DataCell(Text('9')),
          ]),
          DataRow(cells: [
            DataCell(Text('3')),
            DataCell(Text("Mr T")),
            DataCell(Text('5'))
          ])
        ])
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Settings", icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
