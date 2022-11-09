import 'package:flutter/material.dart';
import 'package:shopping_cart_with_bloc/presentation/shopping_home/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShoppingHome(),
    );
  }
}
