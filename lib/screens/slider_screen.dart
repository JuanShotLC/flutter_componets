import 'package:flutter/material.dart';
import 'package:flutter_componets/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider '),
      ),
      body: Column(
        children: [
          Slider.adaptive(
          min: 50,
          max: 600,
          activeColor: AppTheme.primary,
          value: _sliderValue, 
          onChanged: _sliderEnabled
          ? (value) {
      
            _sliderValue = value;
            setState(() { });
          }
          : null
          ),
          Checkbox(
            activeColor: AppTheme.primary,
            value: _sliderEnabled, 
            onChanged: (value) => setState(() { _sliderEnabled = value ?? true; })
            ),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar'),
              value: _sliderEnabled, 
              onChanged:  ( value ) => setState(() {  _sliderEnabled; })
            ),
          SwitchListTile.adaptive(
              activeColor: AppTheme.primary,
                title: const Text('Habilitar'),
                value:_sliderEnabled, 
                onChanged: ( value ) => setState(() { _sliderEnabled; })
            ),
            const AboutListTile(),
         Expanded(
           child: SingleChildScrollView(
             child: Image( 
                image: const NetworkImage('https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/1a54ce51-fcc2-4139-9b86-22af94daa4fd/dfl0hek-35b0ecd4-00e6-4858-aa3e-21ae2f8f9c80.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzFhNTRjZTUxLWZjYzItNDEzOS05Yjg2LTIyYWY5NGRhYTRmZFwvZGZsMGhlay0zNWIwZWNkNC0wMGU2LTQ4NTgtYWEzZS0yMWFlMmY4ZjljODAucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.4skjTUD9K-jf8NBnDGefHB52D4yRc8MnzkA-r4397aY'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
           ),
         ),
          const SizedBox(height: 50,)
        ],
      )
    );
  }
}