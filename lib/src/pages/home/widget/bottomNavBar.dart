
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {

  int currentIndex = 0;

  BottomNavBar({this.currentIndex});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "ฟีดงาน"),
        BottomNavigationBarItem(icon: Icon(Icons.work), label: "งานของฉัน")
      ],
    );
  }
}