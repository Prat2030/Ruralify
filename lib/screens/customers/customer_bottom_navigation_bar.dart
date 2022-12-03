// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './book_appointment.dart';
import './user_profile.dart';
import './user_bookings.dart';
import './book_appointment.dart';

import 'customer_home_screen.dart';

class CustomerBottomNavigationBar extends StatefulWidget {
  @override
  State<CustomerBottomNavigationBar> createState() =>
      _CustomerBottomNavigationBarState();
}

class _CustomerBottomNavigationBarState
    extends State<CustomerBottomNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    CustomerHomeScreen(),
    CustomerHomeScreen(),
    CustomerHomeScreen(),
    UserBookingsScreen(),
    UserProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.yellow.shade600,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: Colors.blue.shade600, size: 25),
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
            icon: Icon(Icons.add_circle_outline),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
