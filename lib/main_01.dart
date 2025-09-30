import 'package:flutter/material.dart';

void main() {
  runApp(Projeto01App());
}

class Projeto01App extends StatelessWidget {
  const Projeto01App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Meu primeiro app"),
    );
  }
}