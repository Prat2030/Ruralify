import 'package:flutter/material.dart';
import 'package:ruban_app/widgets/workers_grid.dart';

import './screens/customer_screen.dart';
import './widgets/workers_tile.dart';

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
      home: CustomerScreen(),
    );
  }
}
