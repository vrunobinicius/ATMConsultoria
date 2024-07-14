import 'package:flutter/material.dart';

class BusinessView extends StatelessWidget {
  const BusinessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text("Empresa"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset("lib/assets/detalhe_empresa.png"),
              const Text("Sobre a empresa",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 60, 60), fontSize: 25)),
            ],
          ),
        ],
      ),
    );
  }
}
