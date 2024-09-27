import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//os parametros que seram passados
class Argumentos {
  final int id;
  final String nome;

  Argumentos(this.id, this.nome);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Tela1(),
        '/tela2': (context) => const Tela2(),
      },
    );
  }
}

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tela 1'),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/tela2');
              },
              child: const Text('Ir para proxima tela.'),
            ),
          ),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  //identificação da rota dentro do widget
  static const routeName = '/tela2';

  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
//para receber os argumentos
    final argumentos = ModalRoute.of(context)?.settings.arguments as Argumentos;

    return Container(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            //recebendo os argumentos
            title: const Text('Tela 2 ${argumentos.nome}'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Voltar uma tela.'),
            ),
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
