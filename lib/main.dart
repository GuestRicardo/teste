import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Observação tudo que estiver com apropriedade e : sera opcional
  /// exemplo:
  /// fontStyle : FontStyle.italic,
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo para teste'),
        ),
        body: const Center(
          child: Text('Meu App'),
        ),
      ),
    );
  }
}
