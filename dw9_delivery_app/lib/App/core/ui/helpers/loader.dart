


import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

mixin Loader<T extends StatefulWidget> on State<T>{
  
  var isOpen = false;

  void showLoader(){
    if (!isOpen) {
      showDialog(
        context: context, 
        builder: (context) {
          return LoadingAnimationWidget.threeArchedCircle(
            color: Colors.white,
            size: 60,
          );
        },
      );
    }
  }

  void hideLoader(){
    if(isOpen) {
      isOpen = false;
      //recebe o context pelo mixin
      Navigator.of(context).pop();
    }
  }
}