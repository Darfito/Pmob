import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tougo/Pages/Notification.dart';
import 'package:tougo/Pages/profile_user.dart';
import 'package:tougo/Pages/stories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/about_us.dart';
import 'package:tougo/Pages/destinations.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(188, 206, 236, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        toolbarHeight: 75,
        title: Text(
          'Menu',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(188, 206, 236, 1),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person, color: Colors.white),
            title: Text(
              'Account',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            trailing: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.white),
            title: Text(
              'Notifications',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            trailing: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notif_tou()));
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.white)),
          ),
          // ListTile(
          //   leading: Icon(Icons.help, color: Colors.white),
          //   title: Text(
          //     'Help',
          //     style: GoogleFonts.poppins(
          //       color: Colors.white,
          //       fontSize: 24,
          //     ),
          //   ),
          //   trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
          // ),

          ListTile(
            leading: Icon(Icons.info, color: Colors.white),
            title: Text(
              'About Us',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            trailing: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AboutUs()));
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.book, color: Colors.white),
            title: Text(
              'Stories',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            trailing: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Stories()));
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.airplane_ticket, color: Colors.white),
            title: Text(
              'Destinations',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            trailing: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Destinations()));
                },
                child: Icon(Icons.arrow_forward_ios, color: Colors.white)),
          ),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.white),
            title: Text(
              'Log Out',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
//Color.fromRGBO(188, 206, 236, 1)
//Colors.white
//airplane_ticket_outlined

