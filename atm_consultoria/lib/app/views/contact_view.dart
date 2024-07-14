import 'package:flutter/material.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Contato"),
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/assets/detalhe_contato.png"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  controller: null,
                  decoration: const InputDecoration(labelText: "Nome Completo"),
                  maxLength: 40,
                ),
                TextFormField(
                  controller: null,
                  decoration: const InputDecoration(labelText: "Telefone"),
                  maxLength: 10,
                ),
                TextFormField(
                  controller: null,
                  decoration: const InputDecoration(labelText: "E-mail"),
                  maxLength: 30,
                ),
                ElevatedButton(
                    onPressed: () => true, child: const Text("Salvar"))
              ],
            )),
          )
        ],
      ),
    );
  }
}
