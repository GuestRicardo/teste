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
  String numero = '';
  double primeiroNumero = 0.0;
  String operacao = '';

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
      case ',':
        setState(() {
          numero += tecla;

          numero = numero.replaceAll(',', '.');

          if (numero.contains('.')) {
            // double numeroDouble = double.parse(numero);
            // numero = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(numero);
            numero = numeroInt.toString();
          }
          numero = numero.replaceAll('.', ',');
        });
        break;

      case '+':
      case '-':
      case '*':
      case '/':
        operacao = tecla;
        numero = numero.replaceAll(',', '.');
        primeiroNumero = double.parse(numero);
        numero = numero.replaceAll('.', ',');
        numero = '0';
        break;

      case '=':
        double resultado = 0.0;
        if (operacao == '+') {
          resultado = primeiroNumero + double.parse(numero);
        }
        if (operacao == '-') {
          resultado = primeiroNumero - double.parse(numero);
        }
        if (operacao == 'x') {
          resultado = primeiroNumero * double.parse(numero);
        }
        if (operacao == '/') {
          resultado = primeiroNumero / double.parse(numero);
        }
        //para nao ter somente em double sera preciso dividi-lo em duas partes, para isso sera usado listas de arrays segue abaixo:
        //variavel temporararia
        String resultadoString = resultado.toString();
        List<String> resultadoPartes = resultadoString.split('.');

        if (int.parse(resultadoPartes[1]) * 1 == 0) {
          setState(() {
            numero = int.parse(resultadoPartes[0]).toString();
          });
        } else {
          setState(() {
            numero = resultado.toString();
          });
        }

        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;

      case '<x':
        setState(() {
          if (numero.isNotEmpty) {
            numero = numero.substring(0, numero.length - 1);
          }
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
                  calcular('AC');
                },
                child: const Text(
                  'AC',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              const Text(' '),
              const Text(' '),
              GestureDetector(
                onTap: () {
                  calcular('<x');
                },
                child: Image.asset(
                  'assets/images/arrow_back.png',
                  width: 72,
                ),
              ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('1');
                },
                child: const Text(
                  '1',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('2');
                },
                child: const Text(
                  '2',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('3');
                },
                child: const Text(
                  '3',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                child: const Text(
                  '-',
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
                  calcular('0');
                },
                child: const Text(
                  '0',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular(',');
                },
                child: const Text(
                  ',',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('=');
                },
                child: const Text(
                  '=',
                  style: TextStyle(fontSize: 48),
                ),
              ),
              GestureDetector(
                onTap: () {
                  calcular('+');
                },
                child: const Text(
                  '+',
                  style: TextStyle(fontSize: 48),
                ),
              ),
            ],
          ),
          const Text(''),
        ],
      ),
    ));
  }
}
