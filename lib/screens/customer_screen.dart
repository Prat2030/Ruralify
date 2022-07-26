// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer'),
      ),
      body: Center(
        child: Text('Customer Screen'),
      ),
    );
  }
}
