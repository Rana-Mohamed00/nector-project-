import 'package:flutter/material.dart';
import 'package:nectar_grocery/screens/Explore.dart';
import 'package:nectar_grocery/screens/HomeScreen.dart';
import 'package:nectar_grocery/screens/log_in.dart';
import 'package:nectar_grocery/screens/onbording.dart';
import 'package:nectar_grocery/screens/start.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:  start(),
    );
  }

}
