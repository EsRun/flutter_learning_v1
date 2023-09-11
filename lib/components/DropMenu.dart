import 'package:flutter/material.dart';

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key}) : super(key: key);

  @override
  State<DropMenu> createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  List<String> listItem = <String>['함양군', '거제시', '산청군'];
  String dropdownValue = '함양군';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
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
