import 'package:flutter/material.dart';
import 'package:flutter_sample/core/common_widgets/molecules/common_app_bar_widget.dart';
import 'package:flutter_sample/core/constants/string_constants.dart';
import 'package:flutter_sample/feature/body_screen/body_screen.dart';

class DefaultHomePage extends StatefulWidget {
  const DefaultHomePage({super.key});

  @override
  State<DefaultHomePage> createState() => _DefaultHomePageState();
}

class _DefaultHomePageState extends State<DefaultHomePage> {
  String appName = StringConstants.appName;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(),
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            children: [
              DrawerHeader(child: Text('Drawer')),
              ListTile(title: Text('Logout')),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appName = "Changed";
          print('button clicked');
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: BodyScreen(navigationMenuIndex: selectedIndex),
      backgroundColor: Colors.teal[200],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person_pin_sharp), label: 'Profile'),
        ],
        selectedIndex: 0,
        onDestinationSelected: (int value) {
          selectedIndex = value;
          setState(() {});  
          print(value);
        },
      ),
    );
  }
}
