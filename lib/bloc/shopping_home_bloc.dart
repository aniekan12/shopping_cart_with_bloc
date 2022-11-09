import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'shopping_home_event.dart';
part 'shopping_home_state.dart';

class ShoppingHomeBloc extends Bloc<ShoppingHomeEvent, ShoppingHomeState> {
  ShoppingHomeBloc() : super(ShoppingHomeInitial()) {
    on<ShoppingHomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
