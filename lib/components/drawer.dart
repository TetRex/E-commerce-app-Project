import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerRow extends StatefulWidget {
  final String iconPath;
  final String settingText;
  final VoidCallback? onPressed;

  const DrawerRow({
    super.key,
    required this.iconPath,
    required this.settingText,
    this.onPressed,
  });

  @override
  State<StatefulWidget> createState() => _DrawerRow();
}

class _DrawerRow extends State<DrawerRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 15),
      child: Row(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shadowColor: Colors.white,
              overlayColor: Colors.white,
              elevation: 0,
            ),
            onPressed: () {},
            child: Row(
              children: [
                ImageIcon(
                  AssetImage(widget.iconPath),
                  size: 20,
                  color: Colors.orange,
                ),
                SizedBox(width: 10),
                Text(
                  widget.settingText,
                  style: GoogleFonts.interTight(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 265,
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerRow(
              iconPath: 'assets/icons/user.png',
              settingText: 'Profile',
            ),
            DrawerRow(
              iconPath: 'assets/icons/messages.png',
              settingText: 'Messages',
            ),
            DrawerRow(
              iconPath: 'assets/icons/language.png',
              settingText: 'Language',
            ),
            DrawerRow(
              iconPath: 'assets/icons/contrast.png',
              settingText: 'Theme',
            ),
            DrawerRow(
              iconPath: 'assets/icons/settings.png',
              settingText: 'Settings',
            ),
            DrawerRow(iconPath: 'assets/icons/info.png', settingText: 'About'),
          ],
        ),
      ),
    );
  }
}
