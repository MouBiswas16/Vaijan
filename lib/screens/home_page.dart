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
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Vaijan Logo.png",
              scale: 3,
            ),
            SizedBox(height: 15),
            Text(
              "Welcome Back",
              style: TextStyle(
                color: Color.fromARGB(255, 32, 32, 32),
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Login to continue",
              style: TextStyle(
                color: Color.fromARGB(255, 41, 41, 41),
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Color.fromARGB(255, 164, 208, 95),
                  minimumSize: Size.fromHeight(50),
                ),
                child: Text(
                  "Connect with Phone Number",
                  style: TextStyle(
                    color: Color.fromARGB(255, 74, 74, 74),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Color.fromARGB(255, 234, 234, 234),
                  minimumSize: Size.fromHeight(50),
                ),
                child: Text(
                  "Register",
                  style: TextStyle(
                    color: Color.fromARGB(255, 74, 74, 74),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      primary: Colors.white,
                      // minimumSize: Size.fromHeight(50),
                      minimumSize: Size.fromWidth(200),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Google Logo.png",
                          scale: 35,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Google",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 81, 81),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(width: 8),
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      primary: Colors.white,
                      minimumSize: Size.fromWidth(200),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Facebook Logo.webp",
                          scale: 18,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Facebook",
                          style: TextStyle(
                            color: Color.fromARGB(255, 81, 81, 81),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        "English",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 92, 92, 92)),
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Color.fromARGB(255, 81, 81, 81),
                      ),
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
