// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/customer_app_drawer.dart';
import '../widgets/workers_grid.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey.shade200,
              height: 200,
            ),
            SizedBox(height: 10),
            Container(
              height: 600,
              width: double.infinity,
              child: WorkersGrid(),
            ),
            Container(
              color: Colors.grey.shade200,
              height: 200,
            ),
          ],
        ),
      ),
      drawer: CustomerAppDrawer(),
    );
  }
}
