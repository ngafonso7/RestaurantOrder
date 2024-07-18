class Product {
  const Product({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 0,
  });

  final String id;
  final String name;
  final double price;
  final int quantity;
}
