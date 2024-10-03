import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/logo.png'),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('teste');
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                    child:
                        const Text('Iniciar', style: TextStyle(fontSize: 50)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
