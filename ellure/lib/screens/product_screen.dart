import 'package:flutter/material.dart';
import '../models/product.dart';
import 'checkout_screen.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              product.image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            Text(
              product.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              "R\$ ${product.price}",
              style: const TextStyle(fontSize: 20, color: Colors.purple),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              child: const Text("Comprar agora"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const CheckoutScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
