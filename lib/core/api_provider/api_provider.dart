import 'dart:developer' as developer;

import 'package:dio/dio.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_categories.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_home.dart';

class ApiProvider {
  final Dio _dio = Dio();
  static const shoppingHomeUrl = 'https://fakestoreapi.com/products';

  List<ShoppingHomeModel> _shoppingHome = [];

  Future<List<ShoppingHomeModel>> getShoppingItems() async {
    try {
      Response response = await _dio.get(shoppingHomeUrl);
      _shoppingHome.addAll(
          List.from(response.data).map((e) => ShoppingHomeModel.fromJson(e)));
      return _shoppingHome;
    } catch (e) {
      developer.log(e.toString());
      return [];
    }
  }

  Future<List<ShoppingCategories>> getShoppingCategoriews() async {
    try {
      return shoppingCategories;
    } catch (e) {
      developer.log(e.toString());
      return [];
    }
  }
}
