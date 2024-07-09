import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  const Btn({super.key, required this.text, required this.color, this.function, required this.textColor, required this.height, required this.width});

  final String text;
  final Color color,textColor;
  final VoidCallback? function;
  final double height,width;

  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
        style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20),backgroundColor:  color,fixedSize: Size(width, height)),
        onPressed:  function,
        child:  Text(text,style: TextStyle(color: textColor),),
    );
  }
}