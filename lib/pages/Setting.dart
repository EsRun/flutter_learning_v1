import 'package:circle_progress_bar/circle_progress_bar.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Example app circular progress bar'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Animated text without circle:'),
            const AnimatedCount(
              count: 90,
              unit: '%',
              duration: Duration(milliseconds: 500),
            ),
            const SizedBox(height: 30),
            const Text('Circle progress bar:'),
            SizedBox(
              width: 250,
              child: CircleProgressBar(
                foregroundColor: Colors.blue,
                backgroundColor: Colors.black12,
                value: 0.5,
                child: AnimatedCount(
                  count: 1,
                  unit: '%',
                  duration: Duration(milliseconds: 500),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text('Complex example:'),
          ],
        ),
      ),
    );
  }

  Widget _dragonCircle() {
    const innerMargin = 4;
    const double strokeWidth = 2;
    const Color backgroundColor = Colors.greenAccent;

    final innerLayout = Container(
      margin: const EdgeInsets.all(innerMargin + strokeWidth),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(150),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://cdn.pixabay.com/photo/2019/08/20/00/16/dragon-4417506_960_720.png',
            height: 150,
          ),
          const Text(
            'Here could be dragons*',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    return innerLayout;
  }
}