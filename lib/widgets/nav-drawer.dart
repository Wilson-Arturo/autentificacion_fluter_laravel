import 'package:flutter/material.dart';
import 'package:fluttersanctum/screen/login-screen.dart';
import 'package:fluttersanctum/screen/posts-screen.dart';

class NavDrawer extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Drawer(
child: ListView(
  children: [
  ListTile(
    title: Text('Wilson Rojas-Tellez')
          ), 
          ListTile(
    title: Text('Posts'),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> 
      PostsScreen()));
    },
          ),
          ListTile(
    title: Text('Login'),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> 
      LoginScreen()));
    },
          ),
       ],
      ),
    );
  }
}