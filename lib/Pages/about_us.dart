import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/menu.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tougo/navbar_bot.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(53, 66, 89, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 130,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Expanded(
              child: Text(
            "Selamat datang di Aplikasi Tougo! Kami adalah aplikasi yang berfokus pada cerita-cerita mitos dan sejarah dari berbagai daerah di Indonesia. Tim kami memastikan bahwa setiap cerita yang kami berikan adalah akurat dan informatif. Kami memahami betapa pentingnya cerita dalam budaya manusia, dan kami ingin memperkenalkan cerita-cerita ini kepada semua orang. Dalam aplikasi kami, Anda akan menemukan berbagai cerita mitos dan sejarah dari berbagai daerah, semuanya tersedia dalam format yang mudah diakses dan mudah dipahami.Tujuan kami adalah untuk membantu memperkaya pemahaman Anda tentang sejarah dan mitologi dunia, serta memberikan hiburan yang menghibur dan mendidik. Kami berharap bahwa Aplikasi Tougo akan menjadi sumber informasi dan inspirasi yang tak ternilai bagi Anda. Terima kasih telah memilih Aplikasi Tougo.",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
