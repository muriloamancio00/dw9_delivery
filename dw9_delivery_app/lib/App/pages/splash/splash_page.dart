import 'package:dw9_delivery_app/App/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  const SplashPage({ super.key });

   @override
   Widget build(BuildContext context) {

    context.colors.primary;

       return Theme(
        data: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black)
          ),
          primaryColor: ColorsApp.i.primary,
          colorScheme: ColorScheme.fromSeed(
            seedColor: ColorsApp.i.primary,
            primary: ColorsApp.i.primary,
            secondary: ColorsApp.i.secundary),
        ),
        child: Scaffold(
           appBar: AppBar(title: const Text('Splash'),
           ),
           body: Column(
             children: [
               Container(),
               ElevatedButton(onPressed: (){}, child: Text('Teste'))
             ],
           ),
       ),
       );
  }
}
