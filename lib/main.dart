import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/Pages/landing_page.dart';
import 'package:provider/provider.dart';
import 'providers/auth.dart';
import 'package:tougo/Pages/auth_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Auth()),
        // ChangeNotifierProvider(
        //   create: (ctx) => Products()),
      ],
      builder: (context, child) => MaterialApp(
        // theme: Tema().themedata,
        title: "TOUGO",
        // initialRoute: homeScreen.x,
        home: LandingPage(),
        // routes: {
        //   homeScreen.x:(context) => homeScreen(),
        // },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
