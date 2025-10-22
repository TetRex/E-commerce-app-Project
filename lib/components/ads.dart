import 'package:e_commerce_app/components/snackbar.dart';
import 'package:flutter/material.dart';

class AdCard extends StatelessWidget {
  final String imagePath;
  final String? message;

  const AdCard({super.key, required this.imagePath, this.message});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          showNotReadySnackBar(context, message: message ?? 'Unknown error'),
      child: Container(
        height: 100,
        width: 300,
        margin: const EdgeInsets.only(left: 8, right: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                color: Colors.grey[300],
                child: const Center(
                  child: Icon(Icons.error, color: Colors.red),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class Ads extends StatelessWidget {
  const Ads({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      width: 600,
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
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 0),
          children: [
            AdCard(
              imagePath: 'assets/images/ads1.png',
              message: 'Discount expired!',
            ),
            AdCard(
              imagePath: 'assets/images/ads2.png',
              message: 'Discount expired!',
            ),
            AdCard(
              imagePath: 'assets/images/ads3.png',
              message: 'Discount expired!',
            ),
          ],
        ),
      ),
    );
  }
}
