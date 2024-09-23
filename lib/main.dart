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
        title: const Text('Aplicativo Carregando imagens'),
      ),
      body: Image.asset(
        'assets/images/1.jpg',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    ));
  }
}
