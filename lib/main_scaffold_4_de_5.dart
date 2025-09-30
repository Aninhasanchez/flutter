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
  // Variáveis de estado para armazenar os valores
  String texto_na_tela = 'Construindo seu app com Flutter';
  String localSensor = '';
  String tipoSensor = '';
  String macAddress = ''; 
  String latitude = '';
  String longitude = '';
  String responsavel = '';
  String observacao = ''; 

  // Controladores para os campos de texto
  final _localController = TextEditingController();
  final _tipoController = TextEditingController();
  final _macAddressController = TextEditingController(); 
  final _latitudeController = TextEditingController(); 
  final _longitudeController = TextEditingController(); 
  final _responsavelController = TextEditingController(); 
  final _observacaoController = TextEditingController(); 

  @override
  void dispose() {
    // Limpa os controladores quando o widget é removido
    _localController.dispose();
    _tipoController.dispose();
    _macAddressController.dispose(); 
    _latitudeController.dispose();
    _longitudeController.dispose();
    _responsavelController.dispose();
    _observacaoController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SCRN', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 64, 60, 134),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Texto que será atualizado
                Text(
                  texto_na_tela,
                  style: const TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // Campo de texto para "Local do Sensor"
                TextField(
                  controller: _localController,
                  decoration: const InputDecoration(
                    labelText: 'Local do Sensor',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    setState(() {
                      localSensor = value; // Atualiza a variável ao digitar
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Campo de texto para "Tipo"
                TextField(
                  controller: _tipoController,
                  decoration: const InputDecoration(
                    labelText: 'Tipo',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 20,
                  onChanged: (value) {
                    setState(() {
                      tipoSensor = value; // Atualiza a variável ao digitar
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Campo de texto para "Mac Address"
                TextField(
                  controller: _macAddressController,
                  decoration: const InputDecoration(
                    labelText: 'Mac Address',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 17, // Formato: XX:XX:XX:XX:XX:XX
                  onChanged: (value) {
                    setState(() {
                      macAddress = value; // Atualiza a variável ao digitar
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Campo de texto para "Latitude"
                TextField(
                  controller: _latitudeController,
                  decoration: const InputDecoration(
                    labelText: 'Latitude',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 17, // Formato: XX:XX:XX:XX:XX:XX
                  onChanged: (value) {
                    setState(() {
                      latitude = value; 
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Campo de texto para "Longitude"
                TextField(
                  controller: _longitudeController,
                  decoration: const InputDecoration(
                    labelText: 'Longitude',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 17, // Formato: XX:XX:XX:XX:XX:XX
                  onChanged: (value) {
                    setState(() {
                      latitude = value; 
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Campo de texto para "Responsavel"
                TextField(
                  controller: _responsavelController,
                  decoration: const InputDecoration(
                    labelText: 'Resposavel',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 17, // Formato: XX:XX:XX:XX:XX:XX
                  onChanged: (value) {
                    setState(() {
                      latitude = value; 
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Campo de texto para "Observação"
                TextField(
                  controller: _observacaoController,
                  decoration: const InputDecoration(
                    labelText: 'Observação',
                    border: OutlineInputBorder(),
                  ),
                  maxLength: 17, // Formato: XX:XX:XX:XX:XX:XX
                  onChanged: (value) {
                    setState(() {
                      latitude = value; 
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Botão para confirmar
                ElevatedButton(
                  onPressed: () {
                    // Atualiza o texto na tela com os valores dos campos
                    setState(() {
                      if (_localController.text.isNotEmpty &&
                          _tipoController.text.isNotEmpty &&
                          _macAddressController.text.isNotEmpty) {
                        texto_na_tela =
                            "Local: ${_localController.text}\nTipo: ${_tipoController.text}\nMac Address: ${_macAddressController.text}\n Latitude: ${_latitudeController.text}\n Longitude: ${_longitudeController.text}\n Responsável: ${_responsavelController.text}\n Observação: ${_observacaoController.text}";
                      } else {
                        texto_na_tela =
                            "Por favor, preencha todos os campos.";
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Text('Confirmar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}