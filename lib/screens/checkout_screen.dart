import 'package:flutter/material.dart';
import 'payment_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

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

            const Text(
              "Resumo do pedido",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Produto selecionado",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            const Text(
              "Valor: R\$ 170",
              style: TextStyle(
                fontSize: 18,
                color: Colors.purple,
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Ir para pagamento"),
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PaymentScreen(),
                    ),
                  );

                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}