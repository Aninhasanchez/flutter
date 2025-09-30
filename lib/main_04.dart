import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(
          title: const Text("SCRM", style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 64, 60, 134),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Smart City Roberto Mange',
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Clique Aqui'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.grey[300],
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Aqui é o rodapé",
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}