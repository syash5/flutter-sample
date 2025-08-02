import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO: add all the constants properly
          Text('Profile Page', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Text('Welcome to the profile page of our application!', style: TextStyle(fontSize: 16)),
          Image(image: AssetImage('assets/images/bg.jpg')),
        ],
      ),
    );
  }
}
