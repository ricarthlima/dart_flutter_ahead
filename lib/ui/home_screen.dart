import 'package:dart_flutter_ahead/models/account.dart';
import 'package:dart_flutter_ahead/ui/styles/colors.dart';
import 'package:dart_flutter_ahead/ui/widgets/account_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sistema de Gestão de Contas"),
        backgroundColor: AppColors.lightGrey,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, "login");
            },
            icon: const Icon(Icons.logout),
            tooltip: "Sair",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: AccountWidget(
          account: Account(
            id: "ID001",
            name: "Ricarth",
            lastName: "Lima",
            balance: 1511.24,
            accountType: null,
          ),
        ),
      ),
    );
  }
}
