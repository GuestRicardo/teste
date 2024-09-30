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
      // imagens online**************************************
      body: Image.network(
        'https://i.pinimg.com/564x/f8/21/df/f821df0dbace25474f7cb71f438b3c60.jpg',
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      // imagens offline**************************************
      // Image.asset(
      //   'assets/images/1.jpg',
      //   fit: BoxFit.cover,
      //   width: double.infinity,
      //   height: double.infinity,
      // ),
    ));
  }
}
