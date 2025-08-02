import 'package:flutter/material.dart';
import 'package:flutter_sample/core/common_widgets/molecules/common_app_bar_widget.dart';
import 'package:flutter_sample/core/constants/string_constants.dart';
import 'package:flutter_sample/core/utils/ui_helper.dart';
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
      // TODO: add proper drawer implmentation
      drawer: Drawer(
        child: Column(
          children: [
            // TODO: add all the constants properly
            DrawerHeader(child: Text('Drawer')),
            ListTile(title: Text('Logout')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appName = "Changed";
          // TODO: foundation package has the debug mode so add the kDebugMode so that this line
          //  doesn't get executed on the profile or release mode
          print('button clicked');
          // TODO: snackbar implmentation and duration and error, success etc.
          // UIHelper.snackBar(message, context, duration: SnackbarDuration.long, type: SnackBarType
          // .success);

          UIHelper.showMyDialog(context);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: BodyScreen(navigationMenuIndex: selectedIndex),
      backgroundColor: Colors.teal[200],
      bottomNavigationBar: NavigationBar(
        destinations: [
          // TODO: add all the constants properly
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person_pin_sharp), label: 'Profile'),
        ],
        selectedIndex: 0,
        onDestinationSelected: (int value) {
          selectedIndex = value;
          setState(() {});
          // TODO: foundation package has the debug mode so add the kDebugMode so that this line
          //  doesn't get executed on the profile or release mode
          print(value);
        },
      ),
    );
  }
}
