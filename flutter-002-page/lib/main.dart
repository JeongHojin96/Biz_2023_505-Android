import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => StartPage();
}

class StartPage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("실제"),
    );
  }
}
