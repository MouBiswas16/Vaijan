import 'package:flutter/material.dart';
import 'package:vaijan/screens/vehicle_choosing.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Vaijan",
      home: VehicleChoosing(),
    ),
  );
}
