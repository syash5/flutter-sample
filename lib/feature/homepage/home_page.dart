import 'package:flutter/material.dart';
import 'package:flutter_sample/core/constants/noto_style_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Home Page', style: NotoSansStyles.text25_extraBold),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Text(
            'Welcome to the home page of our application!',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
