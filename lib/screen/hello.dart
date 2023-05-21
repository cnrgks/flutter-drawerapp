import 'package:flutter/material.dart';
import 'package:drawerapp/utils/mydrawer.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text("Merhaba!"),
        actions: const [],
      ),
      body: const Center(
        child: Text("Merhaba!"),
      ),
    );
  }
}
