import 'package:flutter/material.dart';
import 'package:search_app_bar_page/search_app_bar_page.dart';
import 'drawer.dart';

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
        drawer: AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 243, 243, 243),
              shape: BoxShape.circle,
            ),
            margin: EdgeInsets.all(8),
            child: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: ImageIcon(
                  AssetImage('assets/icons/drawer.png'),
                  size: 24,
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
              margin: EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/search.png'),
                  size: 30,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ],
        ),
        body: Scaffold(backgroundColor: Colors.white),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/home.png'),
                  size: 30,
                  color: const Color.fromARGB(255, 180, 180, 180),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/heart.png'),
                  size: 30,
                  color: const Color.fromARGB(255, 180, 180, 180),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/shopping-cart.png'),
                  size: 30,
                  color: const Color.fromARGB(255, 180, 180, 180),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage('assets/icons/user.png'),
                  size: 30,
                  color: const Color.fromARGB(255, 180, 180, 180),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
