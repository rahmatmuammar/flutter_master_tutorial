import 'package:flutter/material.dart';
import 'package:flutter_master_tutorial/screens/bottom_bar.dart';
import 'package:flutter_master_tutorial/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: BottomBar(),
    );
  }
}
