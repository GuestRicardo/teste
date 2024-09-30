import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark, //modoNoturno ou .light q é o modo claro
        primaryColor:
            Colors.purple.shade100, //barras, botoes, qualquer componente do app
      ),
      home: Scaffold(
        backgroundColor: Colors.purple.shade300,
        appBar: AppBar(
          title: const Center(
            child: Text('Aplicativo para teste'),
          ),
          backgroundColor: Colors.purple.shade900,
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
