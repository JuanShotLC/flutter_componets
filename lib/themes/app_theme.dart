import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
       //Color primario
        primaryColor: Colors.indigo,
//appbar Tema
        appBarTheme: const AppBarTheme(
          color: Colors.indigo,
          elevation: 0
        ),
        ///Text Button tema
      textButtonTheme:  TextButtonThemeData(
        style: TextButton.styleFrom( foregroundColor: primary)
          )
  );
}