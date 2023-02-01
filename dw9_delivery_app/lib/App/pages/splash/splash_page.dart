import 'package:dw9_delivery_app/App/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

import '../../core/config/env/env.dart';
import '../../core/ui/styles/app_styles.dart';
import '../../core/ui/styles/widgets/delivery_button.dart';

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
              TextFormField(
                decoration: const InputDecoration(labelText: 'textsss'),
              )
            ],
          ),
       );
  }
}
