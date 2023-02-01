import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../rest_client/custom_dio.dart';

class AplicationBinding extends StatelessWidget {

  final Widget child;

  const AplicationBinding({ super.key, required this.child });

   @override
   Widget build(BuildContext context) {
    return MultiProvider(
    providers: [
      Provider(create: (context) => CustomDio(),)
    ],
    child: child,
    );
  }
}

//classe responsavel por receber o Dio e prover os dados para a tela