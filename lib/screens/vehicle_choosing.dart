// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:vaijan/screens/custom_appbar.dart';
import 'package:vaijan/screens/custom_bottom_nav_bar.dart';

class VehicleChoosing extends StatefulWidget {
  const VehicleChoosing({Key? key}) : super(key: key);

  @override
  State<VehicleChoosing> createState() => _VehicleChoosingState();
}

class _VehicleChoosingState extends State<VehicleChoosing> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffF4F4F4),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: [
                          Color.fromARGB(255, 129, 129, 129),
                          Colors.white,
                        ],
                      ),
                    ),
                    child: Center(
                      child: CircleAvatar(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
