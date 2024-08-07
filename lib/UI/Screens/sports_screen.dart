import 'package:flutter/material.dart';
import 'package:news/UI/Widgets/article.dart';
import 'package:news/constants/const.dart';

class SportsScreen extends StatelessWidget {
  const SportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      body: ListView.separated(
        itemBuilder: (context, index) {
          return article();
        },
        separatorBuilder: (context, index) {
          return const Divider(
            indent: 20,
            endIndent: 20,
            color: kColor3,
            thickness: 2,
          );
        },
        itemCount: 20,
      ),
    );
  }
}
