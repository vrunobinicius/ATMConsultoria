import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("ATM Consultoria"),
        foregroundColor: Colors.black,
      ),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Image.asset("lib/assets/logo.png")],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Image.asset("lib/assets/menu_empresa.png"),
                onTap: () => Navigator.of(context).pushNamed("/business_view"),
              ),
              GestureDetector(
                child: Image.asset("lib/assets/menu_servico.png"),
                onTap: () => Navigator.of(context).pushNamed("/services_view"),
              )
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                child: Image.asset("lib/assets/menu_cliente.png"),
                onTap: () => Navigator.of(context).pushNamed("/cliente_view"),
              ),
              GestureDetector(
                child: Image.asset("lib/assets/menu_contato.png"),
                onTap: () => Navigator.of(context).pushNamed("/contact_view"),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: "Business"),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
