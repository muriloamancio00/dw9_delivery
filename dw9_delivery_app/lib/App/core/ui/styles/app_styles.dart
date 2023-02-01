import 'package:dw9_delivery_app/App/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

import 'colors_app.dart';

class AppStyles {
  static AppStyles? _instance;
  
  AppStyles._();
  static AppStyles get i{
    _instance??=  AppStyles._();
    return _instance!;
   }

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7)
    ),
    backgroundColor: ColorsApp.i.primary,
    textStyle: TextStyles.i.texButtonLabel,
  );

}

extension AppStylesExtensions on BuildContext {
  AppStyles get appStyles => AppStyles.i;
}