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
          ),

      /// FloatActionButtons
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary
      ),

      ///elvatebuttons
      elevatedButtonTheme:  ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          shape: const StadiumBorder(),
          elevation: 5,

        )
      ),

      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle:  TextStyle( color: primary ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary ),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary ),
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only( bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        )
      )
  );
}