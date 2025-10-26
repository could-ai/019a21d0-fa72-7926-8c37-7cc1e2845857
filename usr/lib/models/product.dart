class Product {
  final String id;
  final String name;
  final String category; // e.g., 'Crops', 'Vegetables', 'Fruits'
  final double price; // Price per kg or unit
  final int quantity; // Available quantity
  final String location; // Farmer's location for 'nearby' browsing
  final String farmerName;

  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.quantity,
    required this.location,
    required this.farmerName,
  });

  // Mock data for demonstration (will be replaced with real database data later)
  static List<Product> mockProducts = [
    Product(id: '1', name: 'Wheat', category: 'Crops', price: 25.0, quantity: 100, location: 'Punjab', farmerName: 'Rajesh Kumar'),
    Product(id: '2', name: 'Tomatoes', category: 'Vegetables', price: 40.0, quantity: 50, location: 'Maharashtra', farmerName: 'Priya Sharma'),
    Product(id: '3', name: 'Apples', category: 'Fruits', price: 80.0, quantity: 30, location: 'Himachal Pradesh', farmerName: 'Amit Singh'),
    Product(id: '4', name: 'Rice', category: 'Crops', price: 35.0, quantity: 200, location: 'West Bengal', farmerName: 'Suresh Patel'),
  ];
}