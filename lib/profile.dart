import 'package:flutter/material.dart';

dynamic bgcolor = Colors.white;
dynamic maincolor = Colors.deepOrange; 
dynamic buttoncolor = Color.fromARGB(255, 100, 100, 100);

// class text extends Text
void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          title: Text('My Profile'),
          elevation: 0,
          // actions: [
          //   IconButton(
          //     onPressed: () {},
          //     icon: )
          // ],
        ),
        body:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World')
          ],
        ),
      ),
    );
  }
} 