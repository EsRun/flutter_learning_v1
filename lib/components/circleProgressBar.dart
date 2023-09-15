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
    return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: CircleProgressBar(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.black12,
                  value: 0.5,
                  child: Center(
                    child: AnimatedCount(
                      fractionDigits: 0,
                      count: 10,
                      unit: '%',
                      duration: Duration(milliseconds: 500),
                    ),
                  )
              )
            )

          ]
      );
  }
}
