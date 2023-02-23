import 'package:flutter/material.dart';
import 'package:flutter_componets/themes/app_theme.dart';

class CustomCardTypo2 extends StatelessWidget {

  final String   imageUrl;
  final String?  name;
  const CustomCardTypo2({
    super.key, required this.imageUrl, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      elevation: 30,
      child: Column(
        children: [
           FadeInImage(
            image: NetworkImage(imageUrl), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 400,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
            ),

            if (name != null)
            Container(
              alignment: AlignmentDirectional.bottomEnd,
              padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
              child:  Text( name ?? 'data' )
            )
        ],
    )
    );
  }
}
