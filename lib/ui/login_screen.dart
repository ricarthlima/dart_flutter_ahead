import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/banner.png"),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset("assets/stars.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 128),
                Image.asset(
                  "assets/logo.png",
                  width: 128,
                ),
                const SizedBox(height: 32),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Sistema de gestão de contas",
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
                    const SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "home");
                      },
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xFFFFa902),
                        ),
                      ),
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
