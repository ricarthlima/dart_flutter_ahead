import 'package:dart_flutter_ahead/ui/styles/colors.dart';
import 'package:flutter/material.dart';

class AccountUpinsertModal extends StatefulWidget {
  const AccountUpinsertModal({super.key});

  @override
  State<AccountUpinsertModal> createState() => _AccountUpinsertModalState();
}

class _AccountUpinsertModalState extends State<AccountUpinsertModal> {
  String accountType = "AMBROSIA";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      padding: EdgeInsets.only(
        top: 32,
        left: 32,
        right: 32,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
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
            const SizedBox(height: 16),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Nome"),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Último nome"),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text("Tipo de conta"),
                  DropdownButton<String>(
                    value: accountType,
                    isExpanded: true,
                    onChanged: (value) {
                      //lembrando que esse "value" é um lambda
                      if (value != null) {
                        setState(() {
                          accountType = value;
                        });
                      }
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: "AMBROSIA",
                        child: Text("Ambrosia"),
                      ),
                      DropdownMenuItem<String>(
                        value: "CANJICA",
                        child: Text("Canjica"),
                      ),
                      DropdownMenuItem<String>(
                        value: "PUDIM",
                        child: Text("Pudim"),
                      ),
                      DropdownMenuItem<String>(
                        value: "BRIGADEIRO",
                        child: Text("Brigadeiro"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            buttonCancelClicked();
                          },
                          child: const Text(
                            "Cancelar",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(AppColors.orange),
                          ),
                          child: const Text(
                            "Adicionar",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  buttonCancelClicked() {
    Navigator.pop(context);
  }

  buttonSaveClicked() {}
}
