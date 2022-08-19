import 'dart:developer';

import 'package:fitness_management/Icon.dart';
import 'package:fitness_management/home.dart';
import 'package:fitness_management/subject.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _IndexState();
  }
}

class _IndexState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: '主页',
    ),
    const BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(CustomIcon.subject),
      label: '项目',
    ),
  ];
  int currentIndex = 0;
  final pages = [const HomePage(), const SubjectPage()];
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('底部导航栏'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.shifting,
        onTap: (value) => {_changePage(value)},
      ),
      body: pages[currentIndex],
    );
  }

  void _changePage(int index) => {
        if (index != currentIndex)
          {
            setState(() {
              currentIndex = index;
              log(currentIndex.toString());
            })
          }
      };
}
