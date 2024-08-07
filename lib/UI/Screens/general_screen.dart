import 'package:flutter/material.dart';
import 'package:news/constants/const.dart';

class GeneralScreen extends StatelessWidget {
  const GeneralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kColor1,
      body: Center(
        child: Text('General Screen'),
      ),
    );
  }
}
