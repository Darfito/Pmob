import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/login_page.dart';
import 'package:tougo/main.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/landing_1.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Ink(
                  decoration: const ShapeDecoration(
                      color: Color.fromRGBO(188, 206, 236, 100),
                      shape: CircleBorder()),
                ),
                IconButton(
                  onPressed: () {},
                  iconSize: 60,
                  icon: Icon(
                    Icons.menu,
                    color: const Color.fromRGBO(255, 255, 255, 100),
                  ),
                ),
              ],
            ),
            Text(
              "TOUGO",
              style: GoogleFonts.poppins(
                  fontSize: 48, fontWeight: FontWeight.w500),
            ),
            Text(
              "Lorem ipsum dolor sit amet consectetur",
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromRGBO(122, 150, 199, 100),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

