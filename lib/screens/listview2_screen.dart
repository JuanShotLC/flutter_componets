// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   final options = const['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Tipo 2"),
        backgroundColor: const Color.fromARGB(255, 36, 186, 28),
      ),
      body:  ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
         trailing: const Icon(Icons.arrow_back_ios_outlined),
         onTap: () {
          final game = options[index];
         print(game);
         },
        ), 
        separatorBuilder: ( _ , __) => const Divider(),
      ),
    );
  }
}