// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomerAppDrawer extends StatelessWidget {
  const CustomerAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // Container(
          //   height: 50,
          //   margin: EdgeInsets.only(
          //     left: 10,
          //     top: 20,
          //   ),
          //   child: Text(
          //     'Customer Name',
          //     style: TextStyle(
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //     ),
          //     textAlign: TextAlign.left,
          //   ),
          // ),
          AppBar(
            leading: CircleAvatar(
              maxRadius: 10,
              backgroundImage: NetworkImage(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            title: Text('Customer Name'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.person),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/profile');
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Orders'),
            leading: Icon(Icons.shopping_basket),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/orders');
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/settings');
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/login');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
