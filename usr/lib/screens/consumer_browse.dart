import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_screen.dart';

class ConsumerBrowse extends StatefulWidget {
  const ConsumerBrowse({super.key});

  @override
  State<ConsumerBrowse> createState() => _ConsumerBrowseState();
}

class _ConsumerBrowseState extends State<ConsumerBrowse> {
  final List<Product> _products = Product.mockProducts; // Mock data
  String _selectedCategory = 'All';

  List<Product> get _filteredProducts {
    if (_selectedCategory == 'All') return _products;
    return _products.where((p) => p.category == _selectedCategory).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse Products'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              setState(() {
                _selectedCategory = value;
              });
            },
            itemBuilder: (context) => [
              const PopupMenuItem(value: 'All', child: Text('All')),
              const PopupMenuItem(value: 'Crops', child: Text('Crops')),
              const PopupMenuItem(value: 'Vegetables', child: Text('Vegetables')),
              const PopupMenuItem(value: 'Fruits', child: Text('Fruits')),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Nearby Listings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = _filteredProducts[index];
                  return Card(
                    child: ListTile(
                      title: Text('${product.name} - ₹${product.price}/kg'),
                      subtitle: Text('Farmer: ${product.farmerName} | Location: ${product.location}'),
                      trailing: Text('${product.quantity} kg available'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductDetailsScreen(product: product),
                          ),
                        );
                      },
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