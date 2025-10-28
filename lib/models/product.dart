class Product {
  final String name;
  final String imagePath;
  final double currentPrice;
  final double? oldPrice;
  final int? discountPercent;
  final String category;

  Product({
    required this.name,
    required this.imagePath,
    required this.currentPrice,
    this.oldPrice,
    this.discountPercent,
    required this.category,
  });
}
