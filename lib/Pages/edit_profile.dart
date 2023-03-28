import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class edit_profile extends StatelessWidget {
  const edit_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromRGBO(53, 66, 89, 1.0),
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                          image: AssetImage('assets/images/evening-sky.jpg')),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Color.fromRGBO(188, 206, 236, 1),
                      ),
                      child: Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        prefixIconColor: Colors.black87,
                        floatingLabelStyle: TextStyle(color: Colors.black87),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide:
                                BorderSide(width: 2, color: Colors.black87)),
                        label: Text("Full Name"),
                        prefixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        prefixIconColor: Colors.black87,
                        floatingLabelStyle: TextStyle(color: Colors.black87),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide:
                                BorderSide(width: 2, color: Colors.black87)),
                        label: Text("Phone no"),
                        prefixIcon: Icon(Icons.numbers)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                        prefixIconColor: Colors.black87,
                        floatingLabelStyle: TextStyle(color: Colors.black87),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide:
                                BorderSide(width: 2, color: Colors.black87)),
                        label: Text("Email"),
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(53, 66, 89, 1.0)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const edit_profile()));
                        },
                        child: const Text(
                          "Edit Profile",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: "Joined",
                          style: TextStyle(fontSize: 12),
                          children: [
                            TextSpan(
                                text: " 28 Maret 2023",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 12))
                          ])),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(0.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: StadiumBorder(),
                            side: BorderSide.none,
                          ),
                          child: Text("Delete"))
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
