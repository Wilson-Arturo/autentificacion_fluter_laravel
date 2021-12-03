import 'package:flutter/material.dart';
import 'package:fluttersanctum/providers/auth.dart';
import 'package:fluttersanctum/screen/login-screen.dart';
import 'dart:developer';

import 'package:provider/provider.dart';


class LoginScreen extends StatefulWidget {
@override
State<StatefulWidget> createState(){
  return LoginState();
}
}

class LoginState extends State<LoginScreen> {
  final _formKey = GlobalKey <FormState>();
   String _email='';
   String _password='';
  
 void submit () {
    Provider.of<Auth>(context, listen: false).login(
credentials: {
  'email': _email,
  'password': _password,
}
   );
   
   Navigator.pop(context);
 }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        ),
        body: Form(
          key: _formKey,
          child: Scrollbar(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                 TextFormField(
                   initialValue: 'Wilson@codecourse.com',
                   decoration: InputDecoration(
                     labelText: 'Email',
                     hintText: 'you@somewhere.com',
                   ),
                   onSaved: (value) {
                     _email = value.toString();
                   },
                 ),
                 TextFormField(
                   initialValue: 'Password',
                   decoration: InputDecoration(
                     labelText: 'Password'
                   ),
                   onSaved: (value) {
                     _password = value.toString();
                   },
                 ),
                 SizedBox(
                   width: double.infinity,
                   child: ElevatedButton(
                     child: Text('Login'),
                     onPressed: () {
                      _formKey.currentState?.save();

                      this.submit();
                     },
                     ),
                 )
                ],
              )
            ),
         ),
        ),
      );
  }
}