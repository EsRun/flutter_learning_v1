import 'package:flutter/material.dart';

import '../pages/Home.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  State<BottomNavi> createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int _selectedIndex = 0;
  List _pages = [Home(), Text("2페이지"), Text("3페이지")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: _pages[_selectedIndex], // 페이지와 연결
        ),

        // BottomNavigationBar 위젯
        bottomNavigationBar: BottomNavigationBar(
          //type: BottomNavigationBarType.fixed, // bottomNavigationBar item이 4개 이상일 경우

          // 클릭 이벤트
          onTap: _onItemTapped,

          currentIndex: _selectedIndex, // 현재 선택된 index

          // BottomNavigationBarItem 위젯
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: String.fromEnvironment("Home")),

            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: String.fromEnvironment("2Page")),

            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: String.fromEnvironment("3Page")),

          ],
        )
    );
  }
  void _onItemTapped(int index) {
    // state 갱신
    setState(() {
      _selectedIndex = index; // index는 item 순서로 0, 1, 2로 구성
    });
  }
}
