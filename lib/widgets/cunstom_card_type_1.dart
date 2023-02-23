import 'package:flutter/material.dart';
import 'package:flutter_componets/themes/app_theme.dart';

class CustomCardTypo1 extends StatelessWidget {
  const CustomCardTypo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.abc_rounded,
              color: AppTheme.primary,
            ),
            title: Text('Soy eee'),
            subtitle: Text('Do irure sint magna commodo.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () { },
                  child: const Text('Cancel'),
                 ),
                 TextButton(
                  onPressed: () {}, 
                  child: const Text('ok')
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
