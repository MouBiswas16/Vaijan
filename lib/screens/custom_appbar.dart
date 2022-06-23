// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_final_fields

import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isBallanceShow = false;
  bool _isAnimation = false;
  bool _isBallance = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      color: Color(0xff612A6F),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(13),
            child: Icon(
              Icons.dehaze,
              size: 20,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Rafiqur Rahman",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: changeState,
                child: Container(
                  width: 160,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AnimatedOpacity(
                        opacity: _isBallanceShow ? 1 : 0,
                        duration: Duration(milliseconds: 500),
                        child: Text(
                          "৳ 50.00",
                          style: TextStyle(
                            color: Color(0xff612A6F),
                            fontSize: 14,
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                        opacity: _isBallance ? 1 : 0,
                        duration: Duration(milliseconds: 400),
                        child: Text(
                          '''   ব্যালেন্স জানতে ট্যাপ করুন''',
                          style: TextStyle(
                            color: Color(0xff612A6F),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        child: Container(
                          height: 20,
                          width: 20,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff612A6F),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "৳",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        duration: Duration(milliseconds: 1100),
                        left: _isAnimation == false ? 5 : 135,
                        curve: Curves.fastOutSlowIn,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 13),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/User Image.jpg"),
            ),
          ),
        ],
      ),
    );
  }

  changeState() async {
    _isAnimation = true;
    _isBallance = false;

    setState(() {});

    await Future.delayed(Duration(milliseconds: 800),
        () => setState(() => _isBallanceShow = true));

    await Future.delayed(Duration(milliseconds: 300),
        () => setState(() => _isBallanceShow = false));

    await Future.delayed(Duration(milliseconds: 200),
        () => setState(() => _isAnimation = false));

    await Future.delayed(
        Duration(milliseconds: 800), () => setState(() => _isBallance = true));
  }
}
