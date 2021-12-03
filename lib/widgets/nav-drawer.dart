import 'package:flutter/material.dart';
import 'package:fluttersanctum/providers/auth.dart';
import 'package:fluttersanctum/screen/login-screen.dart';
import 'package:fluttersanctum/screen/posts-screen.dart';
import 'package:provider/provider.dart';

class NavDrawer extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Drawer(
child: Consumer<Auth>(
  builder: (context, auth, child){
       if (auth.authenticated) {
         return ListView(
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
    title: Text('Logut'),
    onTap: () {
      //
    },
          )
       ],
      );
       } else {
        return ListView(
         children: [ 
           ListTile(
    title: Text('Login'),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> 
      LoginScreen()));
    },
          ),
           ListTile(
    title: Text('Register'),
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> 
      LoginScreen()));
    },
          ),
          ],
        );
       }
      },
     )
    );
  }
}