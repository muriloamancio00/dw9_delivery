// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

import '../../models/product_model.dart';

@match
enum HomeStateStatus {
  initial,
  loading,
  loaded
}


class HomeState extends Equatable {
// É preciso identificar que nosso estado está em algum dos 3 status
  final HomeStateStatus status;
  final List<ProductModel> products;

  const HomeState({
    required this.status,
    required this.products,
  });

  //construtor inicial
  const HomeState.initial()
    : status = HomeStateStatus.initial,
    products = const [];

  @override

  List<Object?> get props => [status, products];


  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductModel>? products,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
    );
  }
}
