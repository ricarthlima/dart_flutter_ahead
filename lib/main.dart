// O vídeo 1.3 não possui código, pois apenas configuramos o emulador.

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("Banco D'Ouro"),
        ),
      ),
    );
  }
}
