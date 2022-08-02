import 'package:flutter/material.dart';

import 'screens/customers/customer_screen.dart';
import 'screens/customers/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: CustomerScreen(),
      home: CustomerBottomNavigationBar(),
    );
  }
}
