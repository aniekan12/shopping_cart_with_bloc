part of 'shopping_categories_bloc.dart';

@immutable
abstract class ShoppingCategoriesState {}

class ShoppingCategoriesInitial extends ShoppingCategoriesState {}

class ShoppingCategoriesLoading extends ShoppingCategoriesState {}

class ShoppingCategoriesLoaded extends ShoppingCategoriesState {
  final List<ShoppingCategories> shoppingCategories;

  ShoppingCategoriesLoaded({required this.shoppingCategories});
}

class ShoppingCategoriesError extends ShoppingCategoriesState {
  final String message;
  ShoppingCategoriesError({required this.message});
}
