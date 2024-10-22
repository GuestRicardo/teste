import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({super.key, this.acertos = 0});

  final acertos;

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
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Resultado', style: TextStyle(fontSize: 30)),
                Text('Voce acertou\n $acertos de 10 perguntas.',
                    style: const TextStyle(fontSize: 30)),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('teste');
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                    child: const Text('Jogar Novamente',
                        style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
