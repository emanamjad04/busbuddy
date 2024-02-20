import 'package:busbuddyy/screens/navScreens/driver/driver_time.dart';
import 'package:busbuddyy/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const DriverTime(),
    },
  ));
}
