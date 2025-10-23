import 'package:e_commerce_app/components/categories.dart';
import 'package:e_commerce_app/components/product_card.dart';
import 'package:e_commerce_app/components/snackbar.dart';
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
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
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
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        margin: EdgeInsets.only(top: 4),
                        child: Wrap(
                          spacing: 12,
                          runSpacing: 12,
                          children: [ProductCard(), ProductCard()],
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
                  onPressed: () {},
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
