import 'package:flutter/material.dart';

class ShoppingHome extends StatefulWidget {
  const ShoppingHome({Key? key}) : super(key: key);

  @override
  State<ShoppingHome> createState() => _ShoppingHomeState();
}

class _ShoppingHomeState extends State<ShoppingHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Home'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
    );
  }
}
