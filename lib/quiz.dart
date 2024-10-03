import 'package:flutter/material.dart';
import 'homePage.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
//dados
//pergunta
//resposta 1
//resposta 2
//resposta 3
//resposta 4
//qual é a correta
//esses dados sera colocado em uma lista

    List quiz = [
      //map
      {
        "pergunta": "Quem descobriu o Brasil",
        //list
        "respostas": [
          "Dom Pedro Primeiro",
          "Pedro Alvares Cabral",
          "Tira Dentes",
          "Dom Pedro Primeiro",
        ],
        "alternativa Correta": 2,
      }
    ];
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    quiz.add({
      "pergunta": "Quem descobriu o Brasil",
      //list
      "respostas": [
        "Dom Pedro Primeiro",
        "Pedro Alvares Cabral",
        "Tira Dentes",
        "Dom Pedro Primeiro",
      ],
      "alternativa Correta": 2,
    });
    print('dados do quiz');
    print(quiz);

    //agora sera criado a renderização das perguntas que sera de 1 a 10
    const perguntaNumero = 2;

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: Text('Pergunta $perguntaNumero',
                      style: TextStyle(fontSize: 20)),
                ),
                const Text('Pergunta', style: TextStyle(fontSize: 30)),
                ElevatedButton(
                  onPressed: () {
                    print('teste 1');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child:
                      const Text('Resposta 1', style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('teste 2');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child:
                      const Text('Resposta 2', style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('teste 3');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child:
                      const Text('Resposta 3', style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('teste 4');
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                  child:
                      const Text('Resposta 4', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
