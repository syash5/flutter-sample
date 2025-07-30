import 'package:flutter/material.dart';
import 'package:flutter_sample/core/constants/string_constants.dart';

import 'feature/homepage/homepage_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: StringConstants.appTitle, home: const HomePage());
  }
}
