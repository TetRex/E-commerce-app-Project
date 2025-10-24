import 'package:e_commerce_app/components/categories.dart';
import 'package:e_commerce_app/components/product_card.dart';
import 'package:e_commerce_app/components/snackbar.dart';
import 'package:e_commerce_app/profile.dart';
import 'package:flutter/material.dart';
import 'components/drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/ads.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

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
                      const Categories_all(),
                      Container(
                        margin: EdgeInsets.only(top: 4),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ProductCard(
                                  productName: 'Apple Watch Series 9',
                                  imagePath: 'assets/images/apple-watch.png',
                                  currentPrice: 124.99,
                                  oldPrice: 249.99,
                                  discountPercent: 50,
                                ),
                                const SizedBox(width: 18),
                                const ProductCard(
                                  productName: 'Samsung Galaxy Watch 7',
                                  imagePath: 'assets/images/samsung-watch.avif',
                                  currentPrice: 129.99,
                                  oldPrice: 189.99,
                                  discountPercent: 32,
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const ProductCard(
                                  productName: 'Apple Watch Series 9',
                                  imagePath: 'assets/images/apple-watch.png',
                                  currentPrice: 124.99,
                                  oldPrice: 249.99,
                                  discountPercent: 50,
                                ),
                                const SizedBox(width: 18),
                                const ProductCard(
                                  productName: 'Samsung Galaxy Watch 7',
                                  imagePath: 'assets/images/samsung-watch.avif',
                                  currentPrice: 129.99,
                                  oldPrice: 189.99,
                                  discountPercent: 32,
                                ),
                              ],
                            ),
                          ],
                        ),
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
          child: Row(
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
                      MaterialPageRoute(builder: (context) => const Profile()
                      )
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
    );
  }
}
