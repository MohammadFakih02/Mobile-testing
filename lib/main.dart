import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Exo'),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}