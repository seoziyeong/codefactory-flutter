import 'package:codefactory_flutter/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // flutter 프레임워크가 앱을 실행할 준비가 될 때까지 기다림
  // main()안에 runApp밖에 없으면 자동으로 실행되는데,
  // WebView를 쓰기 위해서 필요한 설정
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );
}
