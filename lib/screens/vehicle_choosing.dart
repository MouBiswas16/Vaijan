// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaijan/screens/custom_appbar.dart';

class VehicleChoosing extends StatelessWidget {
  const VehicleChoosing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(),
        ),
        body: Container(),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: BottomNavigationBar(
            backgroundColor: Color(0xff612A6F),
            unselectedItemColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              // color: Colors.white,
              fontSize: 12,
            ),
            type: BottomNavigationBarType.fixed,
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
                  Icons.qr_code,
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
          ),
        ),
      ),
    );
  }
}
