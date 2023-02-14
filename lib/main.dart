import 'package:flutter/material.dart';
import 'package:flutter_componets/screens/screens.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const Listview2Screen(),
      initialRoute: 'home',
      routes: {
        'home':(BuildContext context) => const HomeScreen(), 
        'listview1': (BuildContext context) => const Listview1Screen(),
        'listview2': (BuildContext context) => const Listview2Screen(),
        'alrt': (BuildContext context) => const AlertScreen(),
        'card': (BuildContext context) => const CardScreen(), 
       },
       onGenerateRoute: (settings) {
         return MaterialPageRoute(
               builder: (context) => const Listview1Screen(),
           );
    
       },
    );
  }
}