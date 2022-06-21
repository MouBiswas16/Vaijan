// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class VehicleChoosing extends StatelessWidget {
  const VehicleChoosing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff612A6F),
        leading: Icon(Icons.dehaze),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Text(
                      "Rafiqur Rahman",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text("Balance Animation"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/User Image.jpg"),
                ),
              ),
              SizedBox(width: 5),
            ],
          ),
        ],
      ),
    );
  }
}
