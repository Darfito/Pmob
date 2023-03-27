import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 40),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/kodoktertekan.jpg'),
          ),
          const SizedBox(height: 20),
          ItemProfile('Name', 'markonah', CupertinoIcons.person),
          const SizedBox(height: 20),
          ItemProfile('Phone', '082111633013', CupertinoIcons.phone),
          const SizedBox(height: 20),
          ItemProfile('Phone', '082111633013', CupertinoIcons.phone),
          const SizedBox(height: 20),
          ItemProfile('Email', 'lala@email.com', CupertinoIcons.phone),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text('Edit Profile'))
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
                color: Colors.blueAccent.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.grey,
        ),
        tileColor: Colors.white,
      ),
    );
  }
}
