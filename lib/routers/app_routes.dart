import 'package:flutter/material.dart';
import 'package:flutter_componets/models/models.dart';
import 'package:flutter_componets/screens/screens.dart';


class AppRoutes {
  static const initalRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview1', name: 'lista tipo 1', screen: const Listview1Screen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'lista tipo 2', screen: const Listview2Screen(), icon: Icons.list),
    MenuOption(route: 'alrt', name: 'Alrtas', screen: const AlertScreen(), icon: Icons.add_alert),
    MenuOption(route: 'card', name: 'Cartas', screen: const CardScreen(), icon: Icons.credit_card),

  ];

  static Map<String, Widget Function(BuildContext)> getsAppRoetes() {

    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }
    return appRoutes;
  }


  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home':(BuildContext context) => const HomeScreen(), 
  //       'listview1': (BuildContext context) => const Listview1Screen(),
  //       'listview2': (BuildContext context) => const Listview2Screen(),
  //       'alrt': (BuildContext context) => const AlertScreen(),
  //       'card': (BuildContext context) => const CardScreen(), 
  //      };
       
  static Route<dynamic> onGenerateRoute(RouteSettings settings){
         return MaterialPageRoute(
               builder: (context) => const Listview1Screen(),
           );
    
  } 
}