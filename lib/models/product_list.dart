import 'dart:math';

class Product {
  final String name;
  final String imagePath;
  final double currentPrice;
  final double? oldPrice;
  final int? discountPercent;
  final String category;
  final int id;
  bool favorite;

  Product({
    required this.name,
    required this.imagePath,
    required this.currentPrice,
    this.oldPrice,
    this.discountPercent,
    required this.category,
    required this.id,
    this.favorite = false,
  });
}

final List<Product> _productList = [
  // Watches
  Product(
    name: 'Apple Watch Series 11',
    imagePath: 'assets/products/watches/apple-watch11.png',
    currentPrice: 509.90,
    category: 'watch',
    id: 1,
  ),
  Product(
    name: 'Samsung Galaxy Watch Ultra',
    imagePath: 'assets/products/watches/galaxy-watch-ultra.png',
    currentPrice: 599.99,
    category: 'watch',
    id: 2,
  ),
  Product(
    name: 'Apple Watch SE Gen 2',
    imagePath: 'assets/products/watches/apple-watch-se.png',
    currentPrice: 200.99,
    category: 'watch',
    id: 3,
  ),
  Product(
    name: 'Samsung Galaxy Watch 7',
    imagePath: 'assets/products/watches/galaxy-watch7.png',
    currentPrice: 200.99,
    category: 'watch',
    id: 4,
  ),
  Product(
    name: 'Google Pixel Watch 3',
    imagePath: 'assets/products/watches/pixel-watch.png',
    currentPrice: 319.90,
    category: 'watch',
    id: 5,
  ),
  Product(
    name: 'Huawei Watch GT 4',
    imagePath: 'assets/products/watches/huawei-watch.png',
    currentPrice: 249.90,
    category: 'watch',
    id: 6,
  ),

  // T-Shirts
  Product(
    name: 'Classic Brown Cotton Tee',
    imagePath: 'assets/products/tshirts/t-shirt1.png',
    currentPrice: 14.99,
    oldPrice: 29.90,
    discountPercent: 50,
    category: 'tshirt',
    id: 7,
  ),
  Product(
    name: 'Essential Black T-Shirt',
    imagePath: 'assets/products/tshirts/t-shirt2.png',
    currentPrice: 14.99,
    oldPrice: 29.90,
    discountPercent: 50,
    category: 'tshirt',
    id: 8,
  ),
  Product(
    name: 'Heather Grey Crew Neck',
    imagePath: 'assets/products/tshirts/t-shirt3.png',
    currentPrice: 14.99,
    oldPrice: 29.90,
    discountPercent: 50,
    category: 'tshirt',
    id: 9,
  ),
  Product(
    name: 'Navy Blue Premium Tee',
    imagePath: 'assets/products/tshirts/t-shirt4.png',
    currentPrice: 19.99,
    category: 'tshirt',
    id: 10,
  ),
  Product(
    name: 'Soft Pink Casual Shirt',
    imagePath: 'assets/products/tshirts/t-shirt5.png',
    currentPrice: 14.99,
    oldPrice: 39.90,
    discountPercent: 50,
    category: 'tshirt',
    id: 11,
  ),
  Product(
    name: 'Forest Green V-Neck',
    imagePath: 'assets/products/tshirts/t-shirt6.png',
    currentPrice: 19.99,
    category: 'tshirt',
    id: 12,
  ),

  // Bags
  Product(
    name: 'Classic Leather Tote Bag',
    imagePath: 'assets/products/bags/bag1.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
    id: 13,
  ),
  Product(
    name: 'Vintage Messenger Bag',
    imagePath: 'assets/products/bags/bag2.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
    id: 14,
  ),
  Product(
    name: 'Modern Crossbody Purse',
    imagePath: 'assets/products/bags/bag3.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
    id: 15,
  ),
  Product(
    name: 'Luxury Designer Handbag',
    imagePath: 'assets/products/bags/bag4.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
    id: 16,
  ),
  Product(
    name: 'Travel Backpack Pro',
    imagePath: 'assets/products/bags/bag5.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
    id: 17,
  ),
  Product(
    name: 'Business Briefcase Elite',
    imagePath: 'assets/products/bags/bag6.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'bag',
    id: 18,
  ),
  Product(
    name: 'Boots',
    imagePath: 'assets/products/boots/boots1.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'boot',
    id: 19,
  ),
  Product(
    name: 'Boots',
    imagePath: 'assets/products/boots/boots2.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'boot',
    id: 20,
  ),
  Product(
    name: 'Boots',
    imagePath: 'assets/products/boots/boots3.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'boot',
    id: 21,
  ),
  Product(
    name: 'Boots',
    imagePath: 'assets/products/boots/boots4.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'boot',
    id: 22,
  ),
  Product(
    name: 'Boots',
    imagePath: 'assets/products/boots/boots5.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'boot',
    id: 23,
  ),
  Product(
    name: 'Boots',
    imagePath: 'assets/products/boots/boots6.png',
    currentPrice: 19.99,
    oldPrice: 40.90,
    discountPercent: 50,
    category: 'boot',
    id: 24,
  ),
];

List<Product> get allProducts => List.from(_productList)..shuffle(Random());
