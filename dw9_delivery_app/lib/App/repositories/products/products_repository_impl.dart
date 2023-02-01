import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dw9_delivery_app/App/models/product_model.dart';

import '../../core/exceptions/repository_exception.dart';
import '../../core/rest_client/custom_dio.dart';
import './products_repository.dart';

class ProductsRepositoryImpl implements ProductsRepository {

  final CustomDio dio;

  ProductsRepositoryImpl({required this.dio});


  @override
  Future<List<ProductModel>> findAllProducts() async {
  try {
    final result = await dio.unauth().get('/products');
    //função map precisa saber que tipo ele vai receber para transformar
    //return result.data.map<ProductModel>((p) => ProductModel.fromMap(p)).toList();
    return result.data.map<ProductModel>(
      (p) => ProductModel.fromMap(p),
    )
    .toList();
  } on DioError catch (e, s) {
    log('Erro ao buscar produtos', error: e, stackTrace: s);
    throw RepositoryException(message: 'Erro ao buscar produtos');
  }
  }

}


//repositoryImpl é a definição do metodo criado anteriormente
//ganhos de clen code com toda regra de metodo separado do repository