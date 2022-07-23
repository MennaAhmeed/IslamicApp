import 'package:flutter/material.dart';
import 'package:islamic_app/homescreen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
