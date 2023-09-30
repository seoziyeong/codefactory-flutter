import 'package:codefactory_flutter/screen/home_screen.dart';
import 'package:codefactory_flutter/screen/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
    ),
  );
}

final routes = {
  "/": (BuildContext context) => const HomeScreen(),
  "/splash": (BuildContext context) => const Splash(),
};
