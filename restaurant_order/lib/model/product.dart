class Product {
  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageInfo,
    this.quantity = 0,
  });

  final String id;
  final String name;
  final double price;
  final int quantity;
  final String imageInfo;
}
