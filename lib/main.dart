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
      child: const Text('teste', textDirection: TextDirection.ltr),
    );
  }
}
