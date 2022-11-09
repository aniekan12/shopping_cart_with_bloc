import 'package:flutter/material.dart';
import 'package:shopping_cart_with_bloc/core/models/shopping_home.dart';
import 'package:shopping_cart_with_bloc/presentation/widgets/image_widget.dart';

class ShoppingHomeTile extends StatelessWidget {
  final ShoppingHomeModel shoppingHomeModel;
  const ShoppingHomeTile({Key? key, required this.shoppingHomeModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: Colors.grey, width: 0.02)),
      height: size.height,
      width: size.width,
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ImageWidget(imageUrl: shoppingHomeModel.image!),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('\$ ${shoppingHomeModel.price!.toString()}',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(shoppingHomeModel.title!,
                style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }
}
