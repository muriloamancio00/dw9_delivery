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
          appBar: AppBar(title: const Text('Splash'),
          ),
          body: Column(
            children: [
              Container(),
              DeliveryButton(
                width: 200,
                height: 100,
                label: Env.i['backend_base_url'] ?? '',
                onPressed: (){},
              ),
              Text(context.screenWidth.toString()),
              Text(context.screenHeight.toString()),
              Row(
                children: [
                  Container(
                    color: Colors.red,
                    width: context.percentWith(.4),
                    height: 200,
                  ),
                  Container(
                    color: Colors.blue,
                    width: context.percentWith(.6),
                    height: 200,
                  ),
                ],
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'textsss'),
              )
            ],
          ),
       );
  }
}
