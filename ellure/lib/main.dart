import 'package:flutter/material.dart';

void main() {
  runApp(const EllureApp());
}

class EllureApp extends StatelessWidget {
  const EllureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ellure',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ellure")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ProductCard(
            title: "Tênis Nike",
            price: 170,
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
          ),

          SizedBox(height: 16),

          ProductCard(
            title: "Bolsa Feminina",
            price: 220,
            image:
                "https://images.unsplash.com/photo-1584917865442-de89df76afd3",
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  "R\$ $price",
                  style: const TextStyle(fontSize: 16, color: Colors.purple),
                ),

                const SizedBox(height: 10),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Comprar"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  final String title;
  final double price;
  final String image;

  const ProductScreen({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Image.network(image),

          const SizedBox(height: 20),

          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),

          Text(
            "R\$ $price",
            style: const TextStyle(fontSize: 20, color: Colors.purple),
          ),

          const SizedBox(height: 30),

          ElevatedButton(onPressed: () {}, child: const Text("Comprar agora")),
        ],
      ),
    );
  }
}
class CheckoutScreen extends StatelessWidget {
  final String title;
  final double price;

  const CheckoutScreen({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Valor: R\$ $price",
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Ir para pagamento"),
            )

          ],
        ),
      ),