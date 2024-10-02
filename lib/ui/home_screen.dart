import 'package:dart_flutter_ahead/services/account_service.dart';
import 'package:dart_flutter_ahead/ui/styles/colors.dart';
import 'package:dart_flutter_ahead/ui/widgets/account_upinsert_modal.dart';
import 'package:dart_flutter_ahead/ui/widgets/account_widget.dart';
import 'package:flutter/material.dart';

import '../models/account.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Account>> _futureGetAll = AccountService().getAll();

  Future<void> _refresh() async {
    setState(() {
      _futureGetAll = AccountService().getAll();
    });
  }

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const AccountUpinsertModal();
            },
          );
        },
        backgroundColor: AppColors.orange,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: RefreshIndicator(
          onRefresh: _refresh,
          child: FutureBuilder<List<Account>>(
            future: _futureGetAll,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const Center(
                      child: Text("Nenhuma conexão encontrada."));
                case ConnectionState.waiting:
                  return const Center(child: CircularProgressIndicator());
                case ConnectionState.active:
                  return const Center(child: CircularProgressIndicator());
                case ConnectionState.done:
                  if (snapshot.data != null && snapshot.data!.isNotEmpty) {
                    List<Account> listAccount = snapshot.data!;
                    return ListView.builder(
                      itemCount: listAccount.length,
                      itemBuilder: (context, index) {
                        return AccountWidget(account: listAccount[index]);
                      },
                    );
                  } else {
                    return const Center(
                        child: Text("Nenhuma conta encontrada."));
                  }
              }
            },
          ),
        ),
      ),
    );
  }
}
