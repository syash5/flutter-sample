import 'package:flutter/material.dart';
import 'package:flutter_sample/core/constants/string_constants.dart';
import 'package:flutter_sample/feature/default_home_screen/default_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: StringConstants.appTitle, home: const DefaultHomePage());
  }
}
