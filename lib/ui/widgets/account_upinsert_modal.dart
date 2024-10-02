import 'package:flutter/material.dart';

class AccountUpinsertModal extends StatefulWidget {
  const AccountUpinsertModal({super.key});

  @override
  State<AccountUpinsertModal> createState() => _AccountUpinsertModalState();
}

class _AccountUpinsertModalState extends State<AccountUpinsertModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          Center(
            child: Image.asset("assets/icon_add_account.png", width: 64),
          ),
          const SizedBox(height: 32),
          const Text(
            "Adicionar nova conta",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "Preencha os dados abaixo:",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
