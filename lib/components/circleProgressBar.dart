import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';

class CircleProgress extends StatefulWidget {
  const CircleProgress({Key? key}) : super(key: key);

  @override
  State<CircleProgress> createState() => _CircleProgressState();
}

class _CircleProgressState extends State<CircleProgress> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
            CircleProgressBar(
              foregroundColor: Colors.white,
              backgroundColor: Colors.cyan,
              value: 35,
              child: AnimatedCount(
                style: TextField.materialMisspelledTextStyle,
                count: 1,
                unit: '%',
                duration: Duration(milliseconds: 500),
              ),
            )
          ]))
    ]);
  }
}
