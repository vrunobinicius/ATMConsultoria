import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("ATM Consultoria"),
        foregroundColor: Colors.black,
      ),
      drawer: Drawer(
          child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: null,
          ),
        ],
      )),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          switch (index) {
            case 0:
              Navigator.of(context).pushNamed("/home_view");
              break;
            case 1:
              Navigator.of(context).pushNamed("/business_view");
              break;
            case 2:
              Navigator.of(context).pushNamed("/services_view");
              break;
            case 3:
              Navigator.of(context).pushNamed("/cliente_view");
              break;
            case 4:
              Navigator.of(context).pushNamed("/contact_view");
              break;
          }
          _selectedIndex = 0;
        },
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
