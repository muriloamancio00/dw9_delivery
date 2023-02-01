import 'package:dw9_delivery_app/App/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery_app/App/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

import '../../core/config/env/env.dart';
import '../../core/ui/styles/app_styles.dart';
import '../../core/ui/widgets/delivery_button.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ super.key });

   @override
   Widget build(BuildContext context) {

    context.colors.primary;

       return Scaffold(
          body: ColoredBox(
            color: const Color(0XFF140E0E),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    //quem possui tamanho de imagem é sizeBox
                    width: context.screenWidth,
                    child: Image.asset(
                    'assets/images/lanche.png',
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: context.percentHeight(.30),
                      ),
                      Image.asset(
                        'assets/images/logo.png',
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      DeliveryButton(
                        width: context.percentWidth(.60),
                        height: 35,
                        label: 'ACESSAR', onPressed: (){}
                      ),
                    ]
                  ),
                )
              ]
            ),
          ),
       );
  }
}
