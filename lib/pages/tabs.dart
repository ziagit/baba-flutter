import 'package:flutter/material.dart';
import 'package:babah/pages/events.dart';
import 'package:babah/pages/home.dart';
import 'package:babah/pages/library.dart';
import 'package:babah/pages/people.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _selectedIndex = 0;
  List<Widget> _tabChildren = [];

  void _initTabs() {
    _tabChildren = [
      const Home(),
      const People(),
      const Events(),
      const Library()
    ];
  }

  @override
  void initState() {
    _initTabs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          _navigate(index);
        },
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: "خانه"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "افراد"),
          const BottomNavigationBarItem(icon: Icon(Icons.map), label: "وقایع"),
          const BottomNavigationBarItem(
              icon: Icon(Icons.library_books), label: "کتابخانه"),
        ],
      ),
      body: _tabChildren[_selectedIndex],
    );
  }

  _navigate(index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
