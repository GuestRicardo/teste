import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'FutureSpace'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Aplicativo para teste'),
        ),
        body: const Center(
          child: Text(
            'teste\nTexto 2', //colocando o texto em 2 linha usase o \n
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 50, // tamanho da fonte
            ),
          ),
        ),
      ),
    );
  }
}
