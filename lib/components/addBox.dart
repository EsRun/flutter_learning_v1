import 'package:flutter/material.dart';


class AddBox extends StatefulWidget {
  const AddBox({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<AddBox> createState() => _AddBox();
}

class _AddBox extends State<AddBox> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return  AlertDialog(
       shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(10.0)),
       title: Column(
         children: <Widget>[
           new Text("Dialog Title"),
         ],
       ),
       content: Column(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text(
             "Dialog Content",
           ),
         ],
       ),
    );
  }
}