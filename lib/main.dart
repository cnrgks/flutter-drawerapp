import 'package:flutter/material.dart';
import 'package:drawerapp/screen/hello.dart';
import 'package:drawerapp/screen/liste.dart';
import 'package:drawerapp/screen/todolistmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => const Hello(),
        "liste": (context) => const Liste(),
        "todolistmodel": (context) => const TodoListModel(),
      },
    );
  }
}
