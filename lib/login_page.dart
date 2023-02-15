import 'package:flutter/material.dart';
import 'package:tougo/main.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_1.png"),
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
              "LOGIN",
              style: GoogleFonts.poppins(
                  fontSize: 48, fontWeight: FontWeight.w500),
            ),
            //sign in biasa
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromRGBO(53, 66, 89, 100),
                ),
                child: Text(
                  'Sign in',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            // sign in gugel
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color.fromRGBO(255, 255, 255, 100),
                ),
                child: Text(
                  'Sign in',
                  style: GoogleFonts.poppins(
                      fontSize: 12, fontWeight: FontWeight.w500),
                ),
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute)
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}