
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;

//apenas a classe pode se instancializar
  ColorsApp._();

  //instance
  static ColorsApp get i {
    _instance ??=ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secundary => const Color(0XFFF88B0C);
}

//extensao para passarmos nossa instancia para ColorsApp
extension ColorsAppExcentions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}