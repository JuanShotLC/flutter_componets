import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: const Text('Lista'),
          leading: const Icon(Icons.ac_unit_outlined),
          onTap: () {

            // final route = MaterialPageRoute(
            //   builder: (context) => const Listview1Screen(),
            //   );
            // Navigator.push(context, route );

            Navigator.pushNamed(context, 'card');

          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount: 100),
    );
  }
}