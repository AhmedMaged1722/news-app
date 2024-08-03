import 'package:flutter/material.dart';
import 'package:news/constants/const.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor1,
      appBar: AppBar(
        backgroundColor: kColor1,
        title: RichText(
            text: const TextSpan(
          text: 'News',
          style: TextStyle(color: kBlack, fontSize: 24),
          children: [
            TextSpan(
              text: 'App',
              style: TextStyle(color: kColor4, fontSize: 24),
            ),
          ],
        )),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
