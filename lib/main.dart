import 'package:flutter/material.dart';
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
                icon: Icon(Icons.menu_rounded),
                color: Colors.black,
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
                icon: Icon(Icons.search_rounded),
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Scaffold(backgroundColor: Colors.white),
      ),
    );
  }
}
