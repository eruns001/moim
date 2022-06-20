import 'package:flutter/material.dart';
import 'package:untitled/tempP.dart';

import '../data/data.dart';

class Home extends StatefulWidget {
  @override
  _pageHome createState() => _pageHome();
}

class _pageHome extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  /// 페이지들
  final List<Widget> _pageList = <Widget>[
    TempPage(pageNumber: 1),
    TempPage(pageNumber: 2),
    TempPage(pageNumber: 3),
    TempPage(pageNumber: 4),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// appbar
  /// title 앞
  /// leading: IconButton(icon: const Icon(Icons.add),onPressed: (){},),
  /// title 뒤
  /// actions: [IconButton(icon: const Icon(Icons.add_a_photo),onPressed: (){},)],
  AppBar tempAppber(int temp){
    switch (temp) {
      case 0:
        return AppBar(
          title: Text("모임박스"),
          leading: IconButton(icon: const Icon(Icons.add),onPressed: (){},),
          actions: [
            IconButton(
              icon: Icon(Icons.filter_alt_outlined),
              onPressed: (){

              },
            )
          ],
        );
      case 1:
        return AppBar(
          title: Text("알림"),
        );
      case 2:
        return AppBar(
          title: Text("내모임"),
        );
      default:
        return AppBar(
          title: Text("프로필"),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    //디바이스 너비
    double _device_width = MediaQuery.of(context).size.width;
    //디바이스 높이
    double _device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: tempAppber(_selectedIndex),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pageList,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarIconList,
        currentIndex: _selectedIndex,
        unselectedItemColor: ColorsForApp.black,
        showUnselectedLabels: true,
        selectedItemColor: ColorsForApp.selectedItemColor,
        onTap: _onItemTapped,
      ),
    );
  }
}