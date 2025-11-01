import 'package:e_commerce_app/components/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic bgcolor = Colors.white;
dynamic fgcolor = Colors.deepOrange;
dynamic buttoncolor = Color.fromARGB(255, 100, 100, 100);
dynamic balance = 0.00;

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
          leadingWidth: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'My Profile',
                style: GoogleFonts.interTight(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          // leading: Container(
          //   // decoration: BoxDecoration(
          //   //   color:bgcolor,
          //   //   shape: BoxShape.circle,
          //   // ),
          //   margin: EdgeInsets.all(5),
          // ),
          // actions: [
          //   Container(
          //     decoration: BoxDecoration(color: bgcolor, shape: BoxShape.circle),
          //     margin: EdgeInsets.all(1),
          //     child: Row(),
          //   ),
          // ],
        ),

        body: Container(
          margin: const EdgeInsets.only(left: 0, right: 0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            ImageIcon(
                              AssetImage('assets/icons/user.png'),
                              size: 120
                            ),
                            // Text(
                            //   'My.Name',
                            //   style: GoogleFonts.interTight(
                            //     fontSize: 30,
                            //     color: Colors.black
                            //   ),
                            // )
                          ]
                        ),
                        Text("        "),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              balance.toString(),
                              style: GoogleFonts.interTight(
                                fontSize: 60,
                                color: fgcolor,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            Text(
                              'My Balance',
                              style: GoogleFonts.interTight(
                                fontSize: 30,
                                color: Colors.black
                              )
                            )
                          ]
                        )
                      ]
                    ),
                    Text(''),
                    Text(''),
                    Text(''),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/icons/user.png'), size: 30),
                        Text(
                          ' My Orders',
                            style: GoogleFonts.interTight(
                            fontSize: 30,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Text(''),
                    Text(''),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/icons/contrast.png'), size: 30),
                        Text(
                          ' Theme',
                            style: GoogleFonts.interTight(
                            fontSize: 30,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Text(''),
                    Text(''),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/icons/messages.png'), size: 30),
                        Text(
                          ' Messages',
                            style: GoogleFonts.interTight(
                            fontSize: 30,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Text(''),
                    Text(''),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/icons/language.png'), size: 30),
                        Text(
                          ' Language',
                            style: GoogleFonts.interTight(
                            fontSize: 30,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                    Text(''),
                    Text(''),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(AssetImage('assets/icons/settings.png'), size: 30),
                        Text(
                          ' Settings',
                            style: GoogleFonts.interTight(
                            fontSize: 30,
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomBar(currentPage: 'profile'),
      ),
    );
  }
}
            // DrawerRow(
            //   iconPath: 'assets/icons/user.png',
            //   settingText: 'Profile',
            // ),
            // DrawerRow(
            //   iconPath: 'assets/icons/messages.png',
            //   settingText: 'Messages',
            // ),
            // DrawerRow(
            //   iconPath: 'assets/icons/language.png',
            //   settingText: 'Language',
            // ),
            // DrawerRow(
            //   iconPath: 'assets/icons/contrast.png',
            //   settingText: 'Theme',
            // ),
            // DrawerRow(
            //   iconPath: 'assets/icons/settings.png',
            //   settingText: 'Settings',
            // ),
            // DrawerRow(iconPath: 'assets/icons/info.png', settingText: 'About'),