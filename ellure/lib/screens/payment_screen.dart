import 'package:flutter/material.dart';
import 'orders_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagamento"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Total da compra",
              style: TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 20),

            const Text(
              "R\$ 170",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              child: const Text("Pagar agora"),
              onPressed: () {

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const OrdersScreen(),
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