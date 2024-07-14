import 'package:flutter/material.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({super.key});

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text("Serviços"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "lib/assets/detalhe_servico.png",
              ),
              const Text("Nossos Seriços",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 25))
            ],
          ),
        ],
      ),
    );
  }
}
