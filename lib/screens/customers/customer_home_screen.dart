// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../widgets/dropdown_button.dart';
import '../../widgets/customer_app_drawer.dart';
import '../../widgets/workers_grid.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Placeholder(
              fallbackHeight: 200,
              color: Colors.red,
            ),
            SizedBox(height: 10),
            DropDownButton(),
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
