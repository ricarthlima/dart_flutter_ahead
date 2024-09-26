// O vídeo 1.3 não possui código, pois apenas configuramos o emulador.

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "SISTEMA DE GESTÃO DE CONTAS",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
              TextFormField(
                decoration: const InputDecoration(label: Text("E-mail")),
              ),
              TextFormField(
                decoration: const InputDecoration(label: Text("Senha")),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
