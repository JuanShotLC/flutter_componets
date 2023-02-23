import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('JBR'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://ecdn.game4v.com/g4v-content/uploads/2022/10/22074144/Chainsaw-Man-anime-3-game4v-1666399303-89.jpg'),
         ),
      ),
    );
  }
}