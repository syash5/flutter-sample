import 'package:flutter/material.dart';
import 'package:flutter_sample/core/constants/color_constants.dart';
import 'package:flutter_sample/core/constants/string_constants.dart';
import 'package:flutter_sample/feature/homepage/widgets/tile_update_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String appName = StringConstants.appName;

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
          appName = "changed";
          print('button clicked');
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: tileUpdateWidget(title: appName),
      backgroundColor: Colors.teal[200],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person_pin_sharp), label: 'Profile'),
        ],
        selectedIndex: 0,
        onDestinationSelected: (int value) {
          print(value);
        },
      ),
    );
  }
}

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(StringConstants.appBarTitle),
      backgroundColor: ColorConstants.mainColor,
      leading: Icon(Icons.account_balance_rounded),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(70);
}
