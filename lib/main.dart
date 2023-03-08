import 'package:flutter/material.dart';
import 'package:flutter_renewal/my_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Renewal',
      home: Scaffold(
        backgroundColor: Colors.white60,
        appBar: AppBar(
          title: const Text('Renewal'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: const MyHeader(),
      ),
    );
  }
}
