import 'package:flutter/material.dart';

class DeliveryButton extends StatelessWidget {

    final String label;
    //referencia de uma funcao que retorna void
    final VoidCallback? onPressed; 
    final double? width;
    final double? height;

  const DeliveryButton({ 
    super.key,
    required this.label, 
    required this.onPressed,
    this.height = 50,
    this.width,
    });

//elevated button é definido o tamanho pelo pai, geralmente envolto de umn SizeBox
   @override
   Widget build(BuildContext context) {
       return SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(label)
        ),
       );
  }
}