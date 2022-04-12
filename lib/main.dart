import 'package:flutter/material.dart';
import 'package:posttest2_muchlismardais_1915016048/Home_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello, 1915016048_Muchlis Mardais',
      home: new Home(),
    );
  }
}
