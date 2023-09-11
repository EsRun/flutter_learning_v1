import 'package:flutter/material.dart';

import '../components/DropMenu.dart';
import '../components/chart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return
      Column(
          children: [
            Row(

                children:  [
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: DropMenu())
                ]
            ),

            Chart(title: 'oo'),
            Text("ㅁㅁㅁㅁㅁㅁㅁ")
          ]
      );
  }
}
