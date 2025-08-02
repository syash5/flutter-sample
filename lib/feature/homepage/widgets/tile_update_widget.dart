import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class tileUpdateWidget extends StatefulWidget {
  final String title;

  const tileUpdateWidget({super.key, required this.title});

  @override
  State<tileUpdateWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<tileUpdateWidget> {
  @override
  void initState() {
    // TODO: foundation package has the debug mode so add the kDebugMode so that this line
    //  doesn't get executed on the profile or release mode
    print("this is our API call");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("didChangeDependencies is called");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant tileUpdateWidget oldWidget) {
    print("did update widget->>>>>>>${oldWidget.title}");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("disposing of widget");
    super.dispose();
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("this is the build method");
    }
    return Container(
      child: ListTile(
        leading: const Icon(Icons.notification_add),
        // TODO: constant values fix
        trailing: const Text('X', style: TextStyle(fontSize: 24)),
        title: Text(widget.title + counter.toString(), style: TextStyle(fontSize: 20)),
        tileColor: Colors.blue[200],
        onTap: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
