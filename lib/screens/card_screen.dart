import 'package:flutter/material.dart';
import 'package:flutter_componets/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardTypo1(),
          SizedBox(height: 10,),
            CustomCardTypo2(imageUrl: 'https://lh6.ggpht.com/HlgucZ0ylJAfZgusynnUwxNIgIp5htNhShF559x3dRXiuy_UdP3UQVLYW6c=s1200', name: 'AAAAAA',),
          SizedBox(height: 10,),
            CustomCardTypo2(imageUrl: 'https://img.freepik.com/free-photo/bw-greek-statue-image-torn-paper-style-remixed-media_53876-126829.jpg?w=1380&t=st=1677119064~exp=1677119664~hmac=d9c863b9a9681b944e9765e46aeb602431d0947cbf902557f8191edff1ed5a7d', name: null,),
          SizedBox(height: 100,),
        ],
      )
    );
  }
}
