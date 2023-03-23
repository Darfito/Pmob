import 'package:flutter/material.dart';
import 'package:tougo/Pages/Search.dart';
import 'package:tougo/main.dart';
import 'package:tougo/Pages/stories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/about_us.dart';
import 'package:tougo/Pages/destinations.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Navbar_bot extends StatefulWidget {
  @override
  State<Navbar_bot> createState() => _NavbarState();
  int currentIndex = 0;
  List<Widget> pages = [
    const Stories(),
    const AboutUs(),
    const Search(),
    const Destinations(),
  ];
}

class _NavbarState extends State<Navbar_bot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[widget.currentIndex],
      bottomNavigationBar: Container(
        color: Color.fromRGBO(122, 150, 199, 1.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: GNav(
              backgroundColor: Color.fromRGBO(122, 150, 199, 1.0),
              color: Colors.white,
              tabBackgroundColor: Colors.white,
              iconSize: 15,
              gap: 4,
              onTabChange: (index) {
                setState(() {
                  widget.currentIndex = index;
                });
              },
              selectedIndex: 0,
              // backgroundColor: Color.fromRGBO(r, g, b, opacity),
              tabs: [
                GButton(
                  icon: Icons.book,
                  text: "Stories",
                ),
                GButton(
                  icon: Icons.info,
                  text: "About Us",
                ),
                GButton(
                  icon: Icons.search,
                  text: "search",
                ),
                GButton(
                  icon: Icons.airplane_ticket,
                  text: "Destination",
                ),
              ]),
        ),
      ),
    );
  }
}
