import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  final String nome = 'Jose';
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int salario = 8522;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          print('clicou');
          print('novo salario $salario ');

          setState(() {
            salario = salario + 100;
          });
        },
        child: Text('O salario do ${widget.nome} é $salario',
            textDirection: TextDirection.ltr),
      ),
    );
  }
}
