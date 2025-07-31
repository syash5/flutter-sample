import 'package:flutter/material.dart';
import 'package:flutter_sample/core/constants/color_constants.dart';
import 'package:flutter_sample/core/constants/string_constants.dart';

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
        children: [
          Text(
            'Profile Page',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome to the profile page of our application!',
            style: TextStyle(fontSize: 16),
          ),
          Image(image: AssetImage('assets/images/bg.jpg')),
        ],
      ),
    );
  }
}