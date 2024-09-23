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
      body: const Row(
        children: [
          Center(
              child: Text(
            '- mesmo row(linha 1)',
            style: TextStyle(fontSize: 20),
          )),
          Center(
              child: Text(
            '- mesmo row(linha 2)',
            style: TextStyle(fontSize: 20),
          )),
        ],
      ),
    ));
  }
}
