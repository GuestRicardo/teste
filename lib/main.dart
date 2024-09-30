import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //essas propriedades se tornam obrigatorias quando estao fora do Scaffold,
      //se caso esteja dentro, nao precisa do TextDirection
      child: const Center(
        child: Text(
          'teste',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50, // tamanho da fonte
            fontWeight: FontWeight.w200, //fonte em negrito, ou so escreve bold, ou normal
            color: Color.blue.shade700, //cores e tonalidades

          ),
        ),
      ),
    );
  }
}
