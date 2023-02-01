
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

import '../config/env/env.dart';

class CustomDio extends DioForNative {
  CustomDio() :super(BaseOptions(
      baseUrl: Env.i['backend_base_url'] ?? '',
      connectTimeout: 5000,
      receiveTimeout: 60000,
    )){
      //passa o token para a requisiso header
      interceptors.add(LogInterceptor(
        requestBody: true, 
        requestHeader: true,
        responseBody: true,
      ));
    }

    CustomDio auth(){
      return this;
    }
    CustomDio unauth(){
      return this;
    }
}