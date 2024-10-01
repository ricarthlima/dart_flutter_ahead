import 'dart:math';

import 'package:dart_flutter_ahead/models/account.dart';
import 'package:dart_flutter_ahead/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final Account account;
  const AccountWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      decoration: BoxDecoration(
        color: AppColors.lightOrange,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${account.name} ${account.lastName}",
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text("ID: ${account.id.substring(0, min(5, account.id.length))}"),
              Text("Saldo: R\$ ${account.balance.toStringAsFixed(2)}"),
              Text(
                "Tipo: ${account.accountType ?? "Sem tipo de conta declarado."}",
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
