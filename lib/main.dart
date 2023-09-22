import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gotcha/mapel_screen.dart';
import 'package:gotcha/sate/homescreen.dart';
import 'package:gotcha/sate/name_screen.dart';
import 'package:gotcha/sate/second_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/",
      title: "Layout",
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: "/HomeScreen", page: ()=>HomeScreen()),
        GetPage(name: "/SecondScreen", page: ()=>SecondScreen()),
        GetPage(name: "/NameScreen", page: ()=>NameScreen()),
        GetPage(name: "/MapelScreen", page: ()=>MapelScreen())
      ],
      home: HomeScreen(),
    );
  }
}