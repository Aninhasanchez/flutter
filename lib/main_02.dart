import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Smart Action Roberto Mange", style: TextStyle(color: Colors.white),),
          backgroundColor: Color.fromARGB(255, 64, 60, 134),
        ),
        body: const Text('O melhor sistema de automação'),
      )
    );
  }
}