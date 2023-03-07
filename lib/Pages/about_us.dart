import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(53, 66, 89, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        elevation: 0,
        backgroundColor: Color.fromRGBO(53, 66, 89, 1),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: SizedBox(
                height: 90,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tougo",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Menu()));
                        },
                        icon: const Icon(Icons.menu),
                        color: Colors.white,
                        iconSize: 25,
                      ),
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "About Us",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Expanded(
                child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type ",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
      bottomNavigationBar: GNav(tabs: const [
        GButton(
          icon: Icons.info,
          text: "About Us",
          iconColor: Colors.white,
        ),
        GButton(
          icon: Icons.search,
          text: "search",
          iconColor: Colors.white,
        ),
        GButton(
          icon: Icons.book,
          text: "Stories",
          iconColor: Colors.white,
        ),
        GButton(
          icon: Icons.airplane_ticket,
          text: "Destination",
          iconColor: Colors.white,
        ),
      ]),
    );
  }
}
