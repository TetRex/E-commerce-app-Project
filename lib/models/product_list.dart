import 'dart:math';

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

final List<Product> _productList = [
  // Watches
  Product(
    name: 'Apple Watch Series 11',
    imagePath: 'assets/products/watches/apple-watch11.png',
    currentPrice: 509.90,
    category: 'watch',
  ),
  Product(
    name: 'Galaxy Watch Ultra',
    imagePath: 'assets/products/watches/galaxy-watch-ultra.png',
    currentPrice: 599.99,
    category: 'watch',
  ),
  Product(
    name: 'Apple Watch SE',
    imagePath: 'assets/products/watches/apple-watch-se.png',
    currentPrice: 200.99,
    category: 'watch',
  ),
  Product(
    name: 'Galaxy Watch 7',
    imagePath: 'assets/products/watches/galaxy-watch7.png',
    currentPrice: 200.99,
    category: 'watch',
  ),
  Product(
    name: 'Google Pixel Watch',
    imagePath: 'assets/products/watches/pixel-watch.png',
    currentPrice: 319.90,
    category: 'watch',
  ),
  Product(
    name: 'Huawei Watch GT4',
    imagePath: 'assets/products/watches/huawei-watch.png',
    currentPrice: 249.90,
    category: 'watch',
  ),

  // T-Shirts
  Product(
    name: 'T-Shirt Brown',
    imagePath: 'assets/products/tshirts/t-shirt1.png',
    currentPrice: 14.99,
    oldPrice: 29.90,
    discountPercent: 50,
    category: 'tshirt',
  ),
  Product(
    name: 'T-Shirt Black',
    imagePath: 'assets/products/tshirts/t-shirt2.png',
    currentPrice: 14.99,
    oldPrice: 29.90,
    discountPercent: 50,
    category: 'tshirt',
  ),
  Product(
    name: 'T-Shirt Grey',
    imagePath: 'assets/products/tshirts/t-shirt3.png',
    currentPrice: 14.99,
    oldPrice: 29.90,
    discountPercent: 50,
    category: 'tshirt',
  ),
  Product(
    name: 'T-Shirt Navi Blue',
    imagePath: 'assets/products/tshirts/t-shirt4.png',
    currentPrice: 19.99,
    category: 'tshirt',
  ),
  Product(
    name: 'T-Shirt Pink',
    imagePath: 'assets/products/tshirts/t-shirt5.png',
    currentPrice: 14.99,
    oldPrice: 39.90,
    discountPercent: 50,
    category: 'tshirt',
  ),
  Product(
    name: 'T-Shirt Dark Green',
    imagePath: 'assets/products/tshirts/t-shirt6.png',
    currentPrice: 19.99,
    category: 'tshirt',
  ),

  Product(
    name: 'Black Leather Bag',
    imagePath: 'assets/products/bags/bag1.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
  ),
  Product(
    name: 'Black Leather Bag',
    imagePath: 'assets/products/bags/bag2.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
  ),
  Product(
    name: 'Black Leather Bag',
    imagePath: 'assets/products/bags/bag3.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
  ),
  Product(
    name: 'Black Leather Bag',
    imagePath: 'assets/products/bags/bag4.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
  ),
  Product(
    name: 'Black Leather Bag',
    imagePath: 'assets/products/bags/bag5.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
  ),
  Product(
    name: 'Black Leather Bag',
    imagePath: 'assets/products/bags/bag6.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
  ),
  // Add more categories here (bags, boots, glasses, etc.)
];

List<Product> get allProducts => List.from(_productList)..shuffle(Random());
