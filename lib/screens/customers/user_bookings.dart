// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import '../../widgets/bookings_item.dart';

class UserBookingsScreen extends StatelessWidget {
  const UserBookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Bookings'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.only(left: 8),
          child: Column(
            children: <Widget>[
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  hint: Text(
                    'Select Category',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('Item 1'),
                      value: 'Item 1',
                    ),
                  ],
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 8),
              BookingsItem(),
            ],
          ),
        ),
      ),
    );
  }
}
