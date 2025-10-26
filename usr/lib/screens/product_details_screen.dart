import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({super.key, required this.product});

  void _placeOrder(BuildContext context) {
    // Placeholder for ordering - will integrate with Supabase later
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Order placement requires Supabase connection for chat and payments')),
    );
  }

  void _startChat(BuildContext context) {
    // Placeholder for chat - will integrate with Supabase later
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Chat feature requires Supabase connection')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category: ${product.category}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Price: ₹${product.price} per kg'),
            Text('Available Quantity: ${product.quantity} kg'),
            Text('Location: ${product.location}'),
            Text('Farmer: ${product.farmerName}'),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () => _startChat(context),
                  icon: const Icon(Icons.chat),
                  label: const Text('Chat with Farmer'),
                ),
                ElevatedButton.icon(
                  onPressed: () => _placeOrder(context),
                  icon: const Icon(Icons.shopping_bag),
                  label: const Text('Place Order'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}