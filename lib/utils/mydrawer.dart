import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/cnrgks.jpg")),
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(50)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Ramazan Çınar Göksu")
            ],
          )),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "/"),
            leading: const Icon(Icons.home),
            title: const Text("Ana Sayfa"),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "liste"),
            leading: const Icon(Icons.list_alt),
            title: const Text("Liste"),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, "todolistmodel"),
            leading: const Icon(Icons.bookmark),
            title: const Text("Todo List Model"),
          ),
        ],
      ),
    );
  }
}
