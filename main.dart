import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Demo',
      theme: ThemeData(
          primaryColor: Color(0xff075E54),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Color(0xff25D366))),
      home: const Home(),
    );
  }
}
