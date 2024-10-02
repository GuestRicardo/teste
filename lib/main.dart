import 'package:flutter/material.dart';
import 'homePage.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark, //modoNoturno ou .light q é o modo claro
        primaryColor: const Color.fromARGB(
            255, 16, 92, 143), //barras, botoes, qualquer componente do app
      ),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 181, 187),
        appBar: AppBar(title: const Center(child: Text('Quiz - Estudos'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Pergunta 1 de 10'),
              const Text('Pergunta'),
              ElevatedButton(
                onPressed: () {
                  print('teste');
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                child: const Text('Resposta 1', style: TextStyle(fontSize: 50)),
              ),
              ElevatedButton(
                onPressed: () {
                  print('teste');
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                child: const Text('Resposta 2', style: TextStyle(fontSize: 50)),
              ),
              ElevatedButton(
                onPressed: () {
                  print('teste');
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                child: const Text('Resposta 3', style: TextStyle(fontSize: 50)),
              ),
              ElevatedButton(
                onPressed: () {
                  print('teste');
                },
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                child: const Text('Resposta 4', style: TextStyle(fontSize: 50)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
