import 'package:dw9_delivery_app/App/pages/home/home_router.dart';
import 'package:dw9_delivery_app/App/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/provider/aplication_binding.dart';
import 'core/ui/theme/theme_config.dart';

class Dw9DeliveryApp extends StatelessWidget {

  const Dw9DeliveryApp({ super.key });

   @override
   Widget build(BuildContext context) {
       return AplicationBinding(
         child: MaterialApp(
          title: 'Delivery App',
          theme: ThemeConfig.theme,
          routes: {
            '/': (context) =>const SplashPage(),
            '/home': (context) => HomeRouter.page, 
          },
         ),
       );
  }
}