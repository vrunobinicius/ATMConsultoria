import 'package:flutter/material.dart';

class ClienteView extends StatefulWidget {
  const ClienteView({super.key});

  @override
  State<ClienteView> createState() => _ClienteViewState();
}

class _ClienteViewState extends State<ClienteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text("Clientes"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset("lib/assets/detalhe_cliente.png"),
              const Text("Clientes",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 25)),
            ],
          ),
          Image.asset("lib/assets/cliente1.png"),
          Image.asset("lib/assets/cliente2.png"),
        ],
      ),
    );
  }
}
