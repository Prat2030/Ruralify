// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'customer_screen.dart';

class CustomerBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomerBottomNavigationBar> createState() =>
      _CustomerBottomNavigationBarState();
}

class _CustomerBottomNavigationBarState
    extends State<CustomerBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    CustomerScreen(),
    CustomerScreen(),
    CustomerScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow.shade600,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Colors.blue.shade600, size: 20),
        selectedItemColor: Colors.blue.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
