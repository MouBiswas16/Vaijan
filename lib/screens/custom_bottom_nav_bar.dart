// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
          backgroundColor: Color(0xff612A6F),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          // ignore: prefer_const_constructors
          selectedLabelStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              label: "হোম",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code_scanner,
                color: Colors.white,
              ),
              label: "QR স্ক্যান",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.envelope,
                color: Colors.white,
              ),
              label: "ইনবক্স",
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
