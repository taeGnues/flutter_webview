import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

void main() {
  // flutter 프레임워크가 앱 실행이 준비될때까지 기다린다.
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
