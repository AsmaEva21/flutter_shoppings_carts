import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final double totalAmount;

  PaymentPage({required this.totalAmount});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Gateway'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total to Pay: \$${totalAmount.toStringAsFixed(2)}",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simulate a successful payment
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Payment Successful!")),
                );
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}