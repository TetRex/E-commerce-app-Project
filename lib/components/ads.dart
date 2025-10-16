import 'package:flutter/material.dart';

class Ads extends StatelessWidget {
  const Ads({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
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
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/ads1.png'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/ads2.png'),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/ads3.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
