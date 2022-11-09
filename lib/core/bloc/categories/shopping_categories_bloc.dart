import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_categories.dart';
import 'package:shopping_cart_with_bloc/core/repositories/categories_repository.dart';

part 'shopping_categories_event.dart';
part 'shopping_categories_state.dart';

class ShoppingCategoriesBloc
    extends Bloc<ShoppingCategoriesEvent, ShoppingCategoriesState> {
  ShoppingCategoriesBloc() : super(ShoppingCategoriesInitial()) {
    final _categoriesRepository = CategoriesRepository();
    on<GetShoppingCategories>((event, emit) async {
      try {
        emit(ShoppingCategoriesLoading());
        final categories = await _categoriesRepository.getCategories();
        emit(ShoppingCategoriesLoaded(shoppingCategories: categories));
      } catch (e) {
        emit(ShoppingCategoriesError(message: e.toString()));
      }
    });
  }
}
