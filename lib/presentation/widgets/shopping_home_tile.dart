import 'package:flutter/material.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_home.dart';

class ShoppingHomeTile extends StatelessWidget {
  final ShoppingHomeModel shoppingHomeModel;
  const ShoppingHomeTile({Key? key, required this.shoppingHomeModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 5,
      width: size.width,
      child: Column(
        children: [Text(shoppingHomeModel.title!)],
      ),
    );
  }
}
