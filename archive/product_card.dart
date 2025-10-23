import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: 185,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 230, 230, 230),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 6, left: 12),
                      width: 50,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(left: 3, top: 3),
                        child: Text(
                          '50% OFF',
                          style: GoogleFonts.interTight(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 230, 230, 230),
                        shape: BoxShape.circle,

                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 85, 85, 85),
                            spreadRadius: 1,
                            blurRadius: 0.1,
                          ),
                        ],
                      ),
                      margin: EdgeInsets.only(left: 85, top: 8),
                      height: 30,
                      width: 30,
                      child: IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/icons/heart.png'),
                          color: const Color.fromARGB(255, 85, 85, 85),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image(
                        image: AssetImage('assets/images/apple-watch.png'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        '67.99€',
                        style: GoogleFonts.interTight(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 69),
                      child: Text(
                        '99.99€',
                        style: GoogleFonts.interTight(
                          color: Colors.black,
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
