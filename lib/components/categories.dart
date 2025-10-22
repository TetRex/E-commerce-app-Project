import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem {
  final String iconPath;
  final String label;
  final Color? backgroundColor;
  final Color? iconColor;

  CategoryItem({
    required this.iconPath,
    required this.label,
    this.backgroundColor,
    this.iconColor,
  });
}

// Widget to display a single category
class Categorie extends StatelessWidget {
  final CategoryItem category;

  const Categorie({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 60,
            width: 52,
            decoration: BoxDecoration(
              color:
                  category.backgroundColor ??
                  const Color.fromARGB(255, 221, 220, 220),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: ImageIcon(
                AssetImage(category.iconPath),
                color:
                    category.iconColor ?? const Color.fromARGB(255, 85, 85, 85),
                size: 30,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            category.label,
            style: GoogleFonts.interTight(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class Categories_all extends StatelessWidget {
  const Categories_all({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryItem> categories = [
      CategoryItem(iconPath: 'assets/icons/watch-smart.png', label: 'Watches'),
      CategoryItem(iconPath: 'assets/icons/watch-smart.png', label: 'Watches'),
      CategoryItem(iconPath: 'assets/icons/watch-smart.png', label: 'Watches'),
      CategoryItem(iconPath: 'assets/icons/watch-smart.png', label: 'Watches'),
      CategoryItem(iconPath: 'assets/icons/watch-smart.png', label: 'Watches'),
    ];

    return SizedBox(
      height: 140,
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
                  shadowColor: const Color.fromARGB(255, 219, 132, 1),
                ),
                onPressed: () {},
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
          const SizedBox(height: 0),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Categorie(category: categories[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
