import 'package:dw9_delivery_app/App/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/ui/styles/theme/theme_config.dart';

class Dw9DeliveryApp extends StatelessWidget {

  const Dw9DeliveryApp({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => SplashPage(), 
        },
       );
  }
}