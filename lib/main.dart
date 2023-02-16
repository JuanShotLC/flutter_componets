import 'package:flutter/material.dart';
import 'package:flutter_componets/routers/app_routes.dart';
import 'package:flutter_componets/themes/app_theme.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initalRoute,
      routes: AppRoutes.getsAppRoetes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
      );
  }
}