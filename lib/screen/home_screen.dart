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
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/blog");
            },
            child: const Text("Blog WebView"),
          ),
        ],
      ),
    );
  }
}
