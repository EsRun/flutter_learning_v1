import 'package:flutter/material.dart';
import 'package:monitoring/components/addBox.dart';
import 'package:monitoring/components/circleProgressBar.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: 100,
                      height: 150,
                      child: CircleProgress()
                    )
                )
              ],
            ),
            Chart(title: 'oo'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  showDialog(context: context, builder: (context) => AddBox(title: 'oo'));
                }, child: Text('모달 버튼'))
              ],
            )
          ]
      );
  }
}
