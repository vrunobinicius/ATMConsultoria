import 'package:atm_consultoria/app/views/cliente_view.dart';
import 'package:atm_consultoria/app/views/contact_view.dart';
import 'package:atm_consultoria/app/views/servicos_view.dart';
import 'package:flutter/material.dart';
import 'app/views/business_view.dart';
import 'app/views/home_view.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(),
      ),
      home: const HomeView(),
      initialRoute: "/home_view",
      routes: {
        "/home_view": (context) => const HomeView(),
        "/business_view": (context) => const BusinessView(),
        "/services_view": (context) => const ServicesView(),
        "/cliente_view": (context) => const ClienteView(),
        "/contact_view": (context) => const ContactView(),
      },
    );
  }
}
