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
        children: [
          productCard(
            context,
            "Tênis Nike",
            170,
            "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
          ),

          productCard(
            context,
            "Bolsa Feminina",
            220,
            "https://images.unsplash.com/photo-1584917865442-de89df76afd3",
          ),
        ],
      ),
    );
  }

  Widget productCard(
    BuildContext context,
    String title,
    double price,
    String image,
  ) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          Image.network(
            image,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text("R\$ $price"),

                const SizedBox(height: 10),

                ElevatedButton(
                  child: const Text("Comprar"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ProductScreen(
                          title: title,
                          price: price,
                          image: image,
                        ),
                      ),
                    );
                  },
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

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              image,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,

              errorBuilder: (context, error, stackTrace) {
                return const Padding(
                  padding: EdgeInsets.all(40),
                  child: Icon(
                    Icons.image_not_supported,
                    size: 120,
                    color: Colors.grey,
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              "R\$ $price",
              style: const TextStyle(fontSize: 20, color: Colors.purple),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              child: const Text("Comprar agora"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CheckoutScreen(title: title, price: price),
                  ),
                );
              },
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class CheckoutScreen extends StatelessWidget {
  final String title;
  final double price;

  const CheckoutScreen({super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Checkout")),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Text("Valor: R\$ $price", style: const TextStyle(fontSize: 18)),

            const SizedBox(height: 40),

            ElevatedButton(
              child: const Text("Finalizar pagamento"),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text("Compra realizada"),
                    content: const Text("Pagamento simulado com sucesso."),
                    actions: [
                      TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
