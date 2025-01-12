import 'package:flutter/material.dart';

import 'PaymentPage.dart';

class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cart;

  CartPage({required this.cart});

  double calculateTotal() {
    double total = 0;
    for (var item in cart) {
      total += item['price'];
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                final item = cart[index];
                return ListTile(
                  title: Text(item["name"]),
                  subtitle: Text("\$${item["price"].toStringAsFixed(2)}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      cart.removeAt(index);
                      Navigator.pop(context);
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Total: \$${calculateTotal().toStringAsFixed(2)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PaymentPage(totalAmount: calculateTotal()),
                  ),
                );
              },
              child: Text('Proceed to Payment'),
            ),
          ),
        ],
      ),
    );
  }
}
