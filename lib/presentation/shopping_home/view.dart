import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_cart_with_bloc/core/bloc/bloc.dart';
import 'package:shopping_cart_with_bloc/presentation/widgets/shopping_home_tile.dart';

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
      body: Container(
        child: BlocConsumer<ShoppingHomeBloc, ShoppingHomeState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            if (state is ShoppingHomeLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ShoppingHomeLoaded) {
              _buildShoppingTile(state);
            }
            return const Center(child: Text('items loading hopefully :)'));
          },
        ),
      ),
    );
  }

  Widget _buildShoppingTile(ShoppingHomeLoaded state) {
    return ListView.builder(itemBuilder: (context, index) {
      final data = state.shoppingHomeModel[index];
      return ShoppingHomeTile(shoppingHomeModel: data);
    });
  }
}
