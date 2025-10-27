import 'package:e_commerce_app/components/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem {
  final String iconPath;
  final Color? backgroundColor;
  final Color? iconColor;

  CategoryItem({required this.iconPath, this.backgroundColor, this.iconColor});
}

// Widget to display a single category
class Categorie extends StatelessWidget {
  final CategoryItem category;

  const Categorie({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10, top: 4, left: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color:
                  category.backgroundColor ??
                  const Color.fromARGB(255, 221, 220, 220),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 0.1,
                  blurRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(category.iconPath),
                  color:
                      category.iconColor ??
                      const Color.fromARGB(255, 85, 85, 85),
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class Categories_all extends StatelessWidget {
  const Categories_all({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryItem> categories = [
      CategoryItem(iconPath: 'assets/icons/watch-smart.png'),
      CategoryItem(iconPath: 'assets/icons/tshirt.png'),
      CategoryItem(iconPath: 'assets/icons/bag.png'),
      CategoryItem(iconPath: 'assets/icons/boot.png'),
      CategoryItem(iconPath: 'assets/icons/glasses.png'),
    ];

    return SizedBox(
      height: 150,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Categories',
                style: GoogleFonts.interTight(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  shadowColor: const Color.fromARGB(255, 255, 255, 255),
                  overlayColor: Colors.white,
                ),
                onPressed: () => showNotReadySnackBar(context),
                child: Text(
                  'See all',
                  style: GoogleFonts.interTight(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Expanded(
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                    Colors.black,
                    Colors.transparent,
                  ],
                  stops: const [0.0, 0.1, 0.9, 1.0],
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: Container(
                margin: const EdgeInsets.only(left: 0, right: 0),
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return Categorie(category: categories[index]);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
