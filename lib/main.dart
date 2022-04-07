import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "My Tutorial App";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My tutorial. Am learning flutter'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('You pressed the bell')));
              }),
        ],
      ),
      body: const Center(
        child: Text(
          'Hello Flutter',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
