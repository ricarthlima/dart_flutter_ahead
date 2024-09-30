// O vídeo 1.3 não possui código, pois apenas configuramos o emulador.

import 'package:flutter/material.dart';

import 'ui/home_screen.dart';
import 'ui/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "login": (context) => const LoginScreen(),
        "home": (context) => const HomeScreen(),
      },
      initialRoute: "login",
    );
  }
}
