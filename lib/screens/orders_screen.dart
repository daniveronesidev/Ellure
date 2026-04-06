import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Pedidos"),
      ),
      body: ListView(
        children: const [

          ListTile(
            title: Text("Tênis Nike"),
            subtitle: Text("Status: Pedido confirmado"),
            trailing: Text("R\$ 170"),
          ),

        ],
      ),
    );
  }
}