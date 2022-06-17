// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Vaijan Logo.png",
              scale: 3,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Login to continue",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 13),
            SizedBox(
              height: 100,
              width: 300,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Connect with Phone Number",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(208, 42, 237, 139)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
              width: 300,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(208, 42, 237, 139)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.ac_unit),
                      Text("Google"),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.abc_sharp),
                      Text("Facebook"),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text("English"),
                      Icon(Icons.pin_drop),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
