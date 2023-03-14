import 'package:flutter/material.dart';
import 'package:tougo/components/my_button.dart';
import 'package:tougo/components/my_textfield.dart';
import 'package:tougo/main.dart';
import 'package:tougo/Pages/stories.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tougo/navbar_bot.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/login_1.png"),
                    fit: BoxFit.cover)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 600,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(243, 243, 246, 0.80),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(children: [_konten(context)]),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Column _konten(BuildContext context) {
    return Column(
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
          ],
        ),

        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 15),
          child: Text(
            "Log In",
            style:
                GoogleFonts.poppins(fontSize: 36, fontWeight: FontWeight.w500),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "New member? Sign up For free",
                style: GoogleFonts.poppins(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // username textfield
        MyTextField(
          controller: usernameController,
          hintText: 'Username',
          obscureText: false,
        ),

        const SizedBox(height: 15),

        MyTextField(
          controller: passwordController,
          hintText: 'Password',
          obscureText: true,
        ),

        const SizedBox(height: 10),

        //forgot password
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Forgot Password?",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        //sign in biasa
        // MyButton(
        //   onTap: signUserIn,
        // ),

        const SizedBox(height: 5),
        Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(122, 150, 199, 1.0),
          ),
          child: Material(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Navbar_bot()));
              },
              child: Center(
                child: Text(
                  "Sign in",
                  style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  selectionColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
        // sign in gugel
      ],
    );
  }
}

        // Container(
        //   width: 150,
        //   height: 40,
        //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        //   child: Material(
        //     color: Color.fromRGBO(122, 150, 199, 1.0),
        //     child: InkWell(
        //       onTap: () {
        //         Navigator.pushReplacement(context,
        //             MaterialPageRoute(builder: (context) => Navbar_bot()));
        //       },
        //       child: Container(
        //         child: Center(
        //           child: Text(
        //             'Sign in',
        //             style: GoogleFonts.poppins(
        //                 fontSize: 12,
        //                 fontWeight: FontWeight.w500,
        //                 color: Colors.white),
        //             selectionColor: Colors.white,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // )

// ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               backgroundColor: const Color.fromRGBO(53, 66, 89, 1.0),
//             ),
//             child: Text(
//               'Sign in',
//               style: GoogleFonts.poppins(
//                   fontSize: 12, fontWeight: FontWeight.w500),
//               selectionColor: Colors.white,
//             ),
//             onPressed: () {
//               Navigator.push(context,
//                   MaterialPageRoute(builder: (context) => Navbar_bot()));
//             },
//           ),