import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatefulWidget {
  const MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class MeuAppState extends State<MeuApp> {
  Future<void> _obterLocalizacao() async {









    // Se a permissão ainda não foi concedida (denied)
    // O app solicita a permissão ao usuário (requestPermission()).
    // Caso o usuário negue de novo:
    // Mostra mensagem informando que a permissão foi negada.
    // E finaliza a função (return) e marca _isLoadingLocation como false.
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Permissão de localização negada')),
          );
        }
        setState(() {
          _isLoadingLocation = false;
        });
        return;
      }
    }

    // Caso a permissão esteja negada de forma permanente (usuário marcou "não perguntar novamente"
    // ou bloqueou nas configurações do sistema)
    // O app não pode mais pedir diretamente.
    // Mostra mensagem explicando o problema
    // E encerra a execução, já que só o usuário poderá liberar manualmente nas configurações do celular
    if (permission == LocationPermission.deniedForever) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Permissão de localização negada permanentemente')),
        );
      }
      setState(() {
        _isLoadingLocation = false;
      });
      return;
    }


    // Finalmente tenta obter a localização atual
    // O parâmetro LocationSettings: LocationAccuracy.high
    // pede a maior precisão possível (pode consumir mais bateria e tempo)
    // Retorna um objeto Position com informações como latitude, longitude, altitude, velocidade, timestamp, etc
    try {
      Position pos = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(
          accuracy: LocationAccuracy.high, // mesmo efeito do desiredAccuracy das versões anteriores
          distanceFilter: 0,               // opcional: atualiza sempre, mesmo sem deslocamento
        ),
      );

    // Atualiza o estado do widget com os valores da localização
    // latitude e longitude são convertidos para String com 6 casas decimais
    // Preenche os controladores de texto _latitudeController e _longitudeController (vinculados aos TextFields).
    // Marca _isLoadingLocation como false indicando que terminou de carregar.
    }




  }
}