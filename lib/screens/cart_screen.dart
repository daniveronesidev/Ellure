import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/app_store.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final cart = context.watch<AppStore>().cart;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {

          final product = cart[index];

          return ListTile(
            title: Text(product.title),
            trailing: Text("R\$ ${product.price}"),
          );

        },
      ),
    );
  }
}