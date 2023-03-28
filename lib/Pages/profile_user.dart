import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tougo/Pages/edit_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(53, 66, 89, 1.0),
          title: Text("Profile"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/evening-sky.jpg'),
              ),
              const SizedBox(height: 20),
              ItemProfile('Name', 'markonah', CupertinoIcons.person),
              const SizedBox(height: 20),
              ItemProfile('Phone', '082111633013', CupertinoIcons.phone),
              const SizedBox(height: 20),
              ItemProfile('Email', 'lala@email.com', CupertinoIcons.phone),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(53, 66, 89, 1.0)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const edit_profile()));
                  },
                  child: const Text('Edit Profile'))
            ],
          ),
        ));
  }

  ItemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Color.fromRGBO(53, 66, 89, 1.0),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        tileColor: Colors.white,
      ),
    );
  }
}
