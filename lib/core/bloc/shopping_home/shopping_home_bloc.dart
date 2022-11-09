import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_home.dart';
import 'package:shopping_cart_with_bloc/core/repositories/shopping_home_repository.dart';

part 'shopping_home_event.dart';
part 'shopping_home_state.dart';

class ShoppingHomeBloc extends Bloc<ShoppingHomeEvent, ShoppingHomeState> {
  ShoppingHomeBloc() : super(ShoppingHomeInitial()) {
    final ShoppingHomeRepository shoppingHomeRepository =
        ShoppingHomeRepository();
    on<GetShoppingItems>((event, emit) async {
      try {
        emit(ShoppingHomeLoading());
        final shoppingItems = await shoppingHomeRepository.getShoppingItems();
        emit(ShoppingHomeLoaded(shoppingHomeModel: shoppingItems));
      } catch (e) {
        emit(ShoppingHomeError(message: e.toString()));
      }
    });
  }
}
