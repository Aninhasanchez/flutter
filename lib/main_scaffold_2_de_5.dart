import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  String texto_na_tela = 'Construindo seu app com Flutter';
  String localSensor = '';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SCRN', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 64, 60, 134),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                texto_na_tela,
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20), //Espaçamento entre o texto e o botão
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0), //Espaço lateral
                child: TextField(
                  controller: _controller, //Controlador para capturar o texto
                  decoration: const InputDecoration(
                    labelText: 'Local do Sensor', //Nome do campo de digitação
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20, //Limite de caracteres a ser digitado. 20 tb é tamanho do campo no BD
                  onChanged: (value) {
                    //o valor digitado é passado para essa função onChanged através da variavel value
                    localSensor = value; //Atualiza a variavel ao digitar
                  },
                ),
              ),
              const SizedBox(height: 20), //Espaçamento entre o texto e o botão
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // abaixo vamos criar uma expressão como a que segue
                    // texto na tela = localSensor.isNotEmpty ? ... : ...
                    // esta é uma expressão condicional que avalia uma condição e retorna um valor com base no resultado
                    texto_na_tela = "Você clicou no botão!!"; //Atualiza o texto ao clicar no botão!
                  });
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(200, 50),
                ),
                child: const Text('Clique Aqui'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}