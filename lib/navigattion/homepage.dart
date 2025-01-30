import 'package:flutter/material.dart';
import 'package:project_1/navigattion/page1.dart';
import 'package:project_1/navigattion/page2.dart';
import 'package:project_1/navigattion/page3.dart';
import 'package:project_1/navigattion/page4.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [Page1(), Page2(), Page3(), Page4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex:_currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor:Colors.pink,
        unselectedItemColor:Colors.black,
        backgroundColor:Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), label: "page1"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "page2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "page3"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "page4")

        ],
      ),
    );
  }
}
