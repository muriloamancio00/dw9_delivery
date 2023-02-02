import 'package:dw9_delivery_app/App/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../../core/ui/widgets/delivery_appbar.dart';
import '../../models/product_model.dart';
import 'home_controller.dart';
import 'home_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
//primeira coisa a fazer quando iniciar esse cod
  @override
  void initState() {
    super.initState();
    //a tela é construida nesse ponto
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      //codigo buscando os produtos
      context.read<HomeController>().loadProducts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppbar(),
      //consumer pois temos o listenner e o builder = setState
      body: BlocConsumer<HomeController, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          //o listview nao pode ser usado dentro de uma column
          //o adequado é expandir ele dentro da colum
          return Column(children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.products.length,
                  //funcao tem como objetivo printar um produto inteiro com informacoes
                itemBuilder: (context, index) {
                  final products = state.products[index];
                  return DeliveryProductTile(
                    product: products,
                  );
                },
              ),
            ),
          ]);
        },
      ),
    );
  }
}
