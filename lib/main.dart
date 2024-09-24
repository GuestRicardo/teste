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
        title: const Center(
          child: Text('Calculadora'),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('Coluna 1'),
          Text('Coluna 2'),
          Text('Coluna 3'),
          Text('Coluna 4'),
          Text('Coluna 5'),
          Text('Coluna 6'),
        ],
      ),
    ));
  }
}
