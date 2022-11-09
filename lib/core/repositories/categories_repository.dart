import 'package:shopping_cart_with_bloc/core/api_provider/api_provider.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_categories.dart';

class CategoriesRepository {
  final _apiProvider = ApiProvider();

  Future<List<ShoppingCategories>> getCategories() async {
    return _apiProvider.getShoppingCategoriews();
  }
}
