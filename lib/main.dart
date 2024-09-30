import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark, //modoNoturno ou .light q é o modo claro
        primaryColor:
            Colors.purple.shade100, //barras, botoes, qualquer componente do app
      ),
      home: Scaffold(
        backgroundColor: Colors.purple.shade300,
        appBar: AppBar(title: const Center(child: Text('Quiz - Estudos'))),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 300),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Iniciar', style: ,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
