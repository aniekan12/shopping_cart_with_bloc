part of 'shopping_home_bloc.dart';

@immutable
abstract class ShoppingHomeState {}

class ShoppingHomeInitial extends ShoppingHomeState {}

class ShoppingHomeLoading extends ShoppingHomeState {}

class ShoppingHomeLoaded extends ShoppingHomeState {
  final List<ShoppingHomeModel> shoppingHomeModel;
  ShoppingHomeLoaded({required this.shoppingHomeModel});
}

class ShoppingHomeError extends ShoppingHomeState {
  final String message;
  ShoppingHomeError({required this.message});
}
