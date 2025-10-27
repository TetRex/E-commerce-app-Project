import 'package:flutter/material.dart';

dynamic bgcolor = Colors.white;
dynamic fgcolor = Colors.deepOrange; 
dynamic buttoncolor = Color.fromARGB(255, 100, 100, 100);
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

        ),
        body:  Row(
          children: [
            Text('Hello World')
          ],
        ),
      ),
    );
  }
} 