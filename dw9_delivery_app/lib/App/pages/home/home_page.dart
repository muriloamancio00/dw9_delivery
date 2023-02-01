import 'package:dw9_delivery_app/App/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

import '../../core/ui/widgets/delivery_appbar.dart';
import '../../models/product_model.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: DeliveryAppbar(),
           body: Column(
            children: [
              //o listview nao pode ser usado dentro de uma column
              //o adequado é expandir ele dentro da colum
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    //funcao tem como objetivo printar um produto inteiro com informacoes
                    return DeliveryProductTile(
                      product: ProductModel(
                        id: 0, 
                        name: 'Lanche X',
                        description: 'Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese',
                        price: 15.0,
                        image: 'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800',  
                      ),
                    );
                  },
                ),

              ),
            ]
           ),
       );
  }
}