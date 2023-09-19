import 'package:flutter/material.dart';

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key}) : super(key: key);

  @override
  State<DropMenu> createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  List<String> listItem = <String>['test1', 'test2', 'test3'];
  String dropdownValue = 'test1';

  void returnData(String v){
    setState(() {
      returnData(v);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      hint: const Text("hint"),
      value: dropdownValue,
      items: listItem.map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),

      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },

    );

  }
}
