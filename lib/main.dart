import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// Observação tudo que estiver com apropriedade e : sera opcional
  /// exemplo:
  /// fontStyle : FontStyle.italic,
  @override
  Widget build(BuildContext context) {
    return Container(
      //essas propriedades se tornam obrigatorias quando estao fora do Scaffold,
      //se caso esteja dentro, nao precisa do TextDirection
      child: const Center(
        child: Text(
          'teste\nTexto 2', //colocando o texto em 2 linha usase o \n
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 50, // tamanho da fonte
            height: 1.15, //espaçamento de linhas
            fontWeight: FontWeight.w200, //fonte em negrito, ou so escreve bold, ou normal
            color: Color.fromARGB(255, 199, 179, 0), //cores e tonalidades
            backgroundColor:Colors.red, //aq esta trocando o fundo somente do texto
            fontStyle: FontStyle.italic, //colocando em italico
            decoration: TextDecoration.overline, //linhas no texto podendo ser no meio embaixo, e embaixo so testar as opções
            fontFamily: 'FuFutureSpace', //aplicando fonte externa
          ),
        ),
      ),
    );
  }
}
