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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Aplicativo stack'),
      ),
      body: Stack(
        fit: StackFit.loose,
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[900],
          ),
          Positioned(
            bottom: 10,
            top: 20,
            left: 20,
            right: -20,
            
            child: Container(
              width: 100,
              height: 100,
              color: const Color.fromARGB(255, 161, 13, 13),
            ),
          ),
        ],
      ),
    ));
  }
}
