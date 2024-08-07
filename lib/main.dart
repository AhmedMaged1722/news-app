import 'package:flutter/material.dart';
import 'package:news/UI/Screens/home.dart';
import 'package:news/data/Services/api_services.dart';

void main() {
  ApiServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
