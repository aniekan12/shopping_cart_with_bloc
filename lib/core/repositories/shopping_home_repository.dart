import 'package:shopping_cart_with_bloc/core/api_provider/api_provider.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_home.dart';

class ShoppingHomeRepository {
  final _apiProvider = ApiProvider();

  Future<List<ShoppingHomeModel>> getShoppingItems() async {
    return _apiProvider.getShoppingItems();
  }
}
