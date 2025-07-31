import 'package:flutter/material.dart';
import 'package:flutter_sample/feature/homepage/home_page.dart';
import 'package:flutter_sample/feature/profilepage/profile_page.dart';

class BodyScreen extends StatelessWidget {
  final int navigationMenuIndex;
  const BodyScreen({super.key,required this.navigationMenuIndex});

  @override
  Widget build(BuildContext context) {
    if(navigationMenuIndex == 0) {
      return HomePage();
    } else if (navigationMenuIndex == 1) {
      return ProfilePage();
    } else {
      return Center(
        child: Text('Invalid Menu Index'),
      );
    }
  }
}