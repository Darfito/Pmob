import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LandingPage());
  }
}
