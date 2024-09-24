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
  String numero = 'Numero';

  void calcular(String tecla) {
    switch (tecla) {
      case '7':
        numero += tecla;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Calculadora'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                numero,
                style: const TextStyle(fontSize: 95),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  print('clicou');
                },
                child: const Text(
                  'AC',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              const Text(' '),
              const Text(' '),
              const Text('DEL', style: TextStyle(fontSize: 48)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  print('clicou');
                },
                child: const Text(
                  '7',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              const Text('8', style: TextStyle(fontSize: 48)),
              const Text('9', style: TextStyle(fontSize: 48)),
              const Text('/', style: TextStyle(fontSize: 48)),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('4', style: TextStyle(fontSize: 48)),
              Text('5', style: TextStyle(fontSize: 48)),
              Text('6', style: TextStyle(fontSize: 48)),
              Text('x', style: TextStyle(fontSize: 48)),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('1', style: TextStyle(fontSize: 48)),
              Text('2', style: TextStyle(fontSize: 48)),
              Text('3', style: TextStyle(fontSize: 48)),
              Text('-', style: TextStyle(fontSize: 48)),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('0', style: TextStyle(fontSize: 48)),
              Text(',', style: TextStyle(fontSize: 48)),
              Text('=', style: TextStyle(fontSize: 48)),
              Text('+', style: TextStyle(fontSize: 48)),
            ],
          ),
          const Text('Coluna 6'),
        ],
      ),
    ));
  }
}
