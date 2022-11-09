import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_with_bloc/core/bloc/shopping_home_bloc.dart';
import 'package:shopping_cart_with_bloc/presentation/shopping_home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => ShoppingHomeBloc()..add(GetShoppingItems()),
            child: ShoppingHome()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const ShoppingHome(),
      ),
    );
  }
}
