import 'package:flutter/material.dart';
import 'package:teste/ESTUDOS/calculadora.dart';
import 'HomePage.dart';
import 'quiz.dart';
import 'resultado.dart';

void main() {
  // runApp(Resultado(acertos: 3));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const Home(),
      'Quiz': (context) => const Quiz(),
      Resultado.routeName: (context) => const Resultado(),
    });
  }
}
