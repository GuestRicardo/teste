import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Aplicativo exemplo scaffold'),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
              child: Text(
            '- mesma coluna(column 1)',
            style: TextStyle(fontSize: 20),
          )),
          Center(
              child: Text(
            '- mesma coluna(column 2)',
            style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    ));
  }
}
