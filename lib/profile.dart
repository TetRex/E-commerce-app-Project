import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic bgcolor = Colors.white;
dynamic fgcolor = Colors.deepOrange;
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
          scrolledUnderElevation: 0,
          surfaceTintColor: Colors.transparent,
          backgroundColor: Colors.white,
          elevation: 0,
          titleSpacing: 0,
          leadingWidth: 70,
          title: Text(
            'My Profile',
            style: GoogleFonts.interTight(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),

          leading: Container(
            // decoration: BoxDecoration(
            //   color:bgcolor,
            //   shape: BoxShape.circle,
            // ),
            margin: EdgeInsets.all(5),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(color: bgcolor, shape: BoxShape.circle),
              margin: EdgeInsets.all(1),
              child: Row(),
            ),
          ],
        ),

        body: Container(
          margin: const EdgeInsets.only(left: 0, right: 0),
          child: ListView(
            children: [Padding(padding: const EdgeInsets.all(10))],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Builder(
            //Navigation.push can't be used without Builder because Navigator
            builder: (context) => Row(
              //operation requested with a context that does not include a Navigator
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation1, animation2) =>
                              const MainApp(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                        ),
                      );
                    },
                    icon: ImageIcon(
                      AssetImage('assets/icons/home.png'),
                      size: 30,
                      color: const Color.fromARGB(255, 120, 120, 120),
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
                      color: const Color.fromARGB(255, 255, 102, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
