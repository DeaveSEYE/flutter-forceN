import 'package:flutter/material.dart';
import 'package:listo/pages/login.dart';
// import 'package:test/pages/home.dart';
// import 'package:test/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Se connecter',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: Login(),
    );
  }
}
