import 'package:codefactory_flutter/screen/splash.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Flutter study"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/splash");
            },
            child: const Text("Splash"),
          ),
        ],
      ),
    );
  }
}
