import 'package:flutter/material.dart';

class MyTheme_Data{
  static Color colorGold=Color(0xFFB7935F);
  static Color colorBlack=Color(0xFF242424);
  static Color colorWhite=Colors.white;


  static final ThemeData lightTheme=ThemeData(
    primaryColor: colorGold,
    scaffoldBackgroundColor: Colors.transparent,

    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: colorBlack,
      ),
    ),
    textTheme: TextTheme(
      headline1:TextStyle(
        color: colorBlack,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      subtitle1:TextStyle(
        color: colorBlack,
        fontSize: 25,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: colorBlack,
      unselectedItemColor: colorWhite,
    ),
  );



  static final ThemeData darkTheme=ThemeData(
  );

}