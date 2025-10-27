import 'package:e_commerce_app/components/categories.dart';
import 'package:e_commerce_app/components/product_card.dart';
import 'package:e_commerce_app/components/snackbar.dart';
import 'package:e_commerce_app/profile.dart';
import 'package:flutter/material.dart';
import 'components/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/ads.dart';

class Product {
  final String name;
  final String imagePath;
  final double currentPrice;
  final double? oldPrice;
  final int? discountPercent;
  final String category; // Add category field

  Product({
    required this.name,
    required this.imagePath,
    required this.currentPrice,
    this.oldPrice,
    this.discountPercent,
    required this.category,
  });
}

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String selectedCategory = 'all'; // Track selected category

  // Define all products with categories
  final List<Product> allProducts = [
    Product(
      name: 'Apple Watch Series 9',
      imagePath: 'assets/images/apple-watch.png',
      currentPrice: 14.99,
      oldPrice: 29.90,
      discountPercent: 50,
      category: 'watch',
    ),
    Product(
      name: 'T-Shirt Brown',
      imagePath: 'assets/items/tshirts/t-shirt1.png',
      currentPrice: 14.99,
      oldPrice: 29.90,
      discountPercent: 50,
      category: 'tshirt',
    ),
    Product(
      name: 'T-Shirt Black',
      imagePath: 'assets/items/tshirts/t-shirt2.png',
      currentPrice: 14.99,
      oldPrice: 29.90,
      discountPercent: 50,
      category: 'tshirt',
    ),
    Product(
      name: 'T-Shirt Grey',
      imagePath: 'assets/items/tshirts/t-shirt3.png',
      currentPrice: 14.99,
      oldPrice: 29.90,
      discountPercent: 50,
      category: 'tshirt',
    ),
    Product(
      name: 'T-Shirt Navi Blue',
      imagePath: 'assets/items/tshirts/t-shirt4.png',
      currentPrice: 19.99,
      category: 'tshirt',
    ),
    Product(
      name: 'T-Shirt Pink',
      imagePath: 'assets/items/tshirts/t-shirt5.png',
      currentPrice: 14.99,
      oldPrice: 39.90,
      discountPercent: 50,
      category: 'tshirt',
    ),
    Product(
      name: 'T-Shirt Dark Green',
      imagePath: 'assets/items/tshirts/t-shirt6.png',
      currentPrice: 19.99,
      category: 'tshirt',
    ),
  ];

  // Filter products based on selected category
  List<Product> get filteredProducts {
    if (selectedCategory == 'all') {
      return allProducts;
    }
    return allProducts.where((p) => p.category == selectedCategory).toList();
  }

  void onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  Widget _buildProductGrid(List<Product> products) {
    if (products.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            'No products available in this category',
            style: GoogleFonts.interTight(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        for (int i = 0; i < products.length; i += 2)
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductCard(
                  productName: products[i].name,
                  imagePath: products[i].imagePath,
                  currentPrice: products[i].currentPrice,
                  oldPrice: products[i].oldPrice,
                  discountPercent: products[i].discountPercent,
                ),
                if (i + 1 < products.length) ...[
                  const SizedBox(width: 18),
                  ProductCard(
                    productName: products[i + 1].name,
                    imagePath: products[i + 1].imagePath,
                    currentPrice: products[i + 1].currentPrice,
                    oldPrice: products[i + 1].oldPrice,
                    discountPercent: products[i + 1].discountPercent,
                  ),
                ],
              ],
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line to remove debug banner
      home: Scaffold(
        backgroundColor: Colors.white,
        drawer: AppDrawer(),
        appBar: AppBar(
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 0,
          leadingWidth: 70,

          leading: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 243, 243),
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.all(10),
            child: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: ImageIcon(
                  AssetImage('assets/icons/drawer.png'),
                  size: 20,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 243, 243, 243),
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(10),
              child: IconButton(
                onPressed: () => showNotReadySnackBar(context),
                icon: ImageIcon(
                  AssetImage('assets/icons/search.png'),
                  size: 30,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),

        body: Container(
          margin: const EdgeInsets.only(left: 0, right: 0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  margin: EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Hello User  ',
                                style: GoogleFonts.interTight(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ImageIcon(
                                AssetImage('assets/icons/hand-wave.png'),
                                color: Colors.deepOrange,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Let\'s start shopping!',
                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(
                                    255,
                                    100,
                                    100,
                                    100,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Ads(),
                      const SizedBox(height: 10),
                      Categories_all(
                        selectedCategory: selectedCategory,
                        onCategorySelected: onCategorySelected,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        child: _buildProductGrid(filteredProducts),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Builder(
            //Navigation.push can't be used without Builder because Navigator
            builder: (context) => Row(
              //operation requested with a context that does not include a Navigator
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage('assets/icons/home.png'),
                      size: 30,
                      color: const Color.fromARGB(255, 255, 102, 0),
                    ),
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage('assets/icons/heart.png'),
                      size: 30,
                      color: const Color.fromARGB(255, 120, 120, 120),
                    ),
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage('assets/icons/shopping-cart.png'),
                      size: 30,
                      color: const Color.fromARGB(255, 120, 120, 120),
                    ),
                  ),
                ),
                SizedBox(
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Profile(),
                        ),
                      );
                    },
                    icon: ImageIcon(
                      AssetImage('assets/icons/user.png'),
                      size: 30,
                      color: const Color.fromARGB(255, 120, 120, 120),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
