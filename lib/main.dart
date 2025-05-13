import 'package:flutter/material.dart';
import 'package:myapp/screens/screens.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Screens(),
      )
    );
  }
}


