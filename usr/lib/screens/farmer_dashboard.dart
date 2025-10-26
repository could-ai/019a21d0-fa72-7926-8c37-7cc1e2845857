import 'package:flutter/material.dart';
import '../models/product.dart';

class FarmerDashboard extends StatefulWidget {
  const FarmerDashboard({super.key});

  @override
  State<FarmerDashboard> createState() => _FarmerDashboardState();
}

class _FarmerDashboardState extends State<FarmerDashboard> {
  final List<Product> _products = Product.mockProducts; // Mock data

  void _addProduct() {
    // Placeholder for adding product - will integrate with Supabase later
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Add Product feature requires Supabase connection')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farmer Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Your Listed Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  final product = _products[index];
                  return Card(
                    child: ListTile(
                      title: Text('${product.name} - ₹${product.price}/kg'),
                      subtitle: Text('Quantity: ${product.quantity} kg | Location: ${product.location}'),
                      trailing: const Icon(Icons.edit),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addProduct,
        child: const Icon(Icons.add),
        tooltip: 'Add Product',
      ),
    );
  }
}