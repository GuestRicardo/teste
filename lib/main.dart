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
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '7':
        setState(() {
          numero += tecla;
        });
        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;

      default:
        numero += tecla;
        break;
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
                  calcular('7');
                },
                child: const Text(
                  '7',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('8');
                },
                child: const Text(
                  '8',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('9');
                },
                child: const Text(
                  '9',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('/');
                },
                child: const Text(
                  '/',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('4');
                },
                child: const Text(
                  '4',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('5');
                },
                child: const Text(
                  '5',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('6');
                },
                child: const Text(
                  '6',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('*');
                },
                child: const Text(
                  'x',
                  style: TextStyle(fontSize: 48),
                ),
              ),
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
