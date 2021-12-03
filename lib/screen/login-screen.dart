import 'package:flutter/material.dart';
import 'package:fluttersanctum/screen/login-screen.dart';
import 'dart:developer';


class LoginScreen extends StatefulWidget {
@override
State<StatefulWidget> createState(){
  return LoginState();
}
}

class LoginState extends State<LoginScreen> {
  final _formKey = GlobalKey <FormState>();
   String _email;
   String _password;
  
 void submit (){
   log(_email);
   log(_password);
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
                   decoration: InputDecoration(
                     labelText: 'Email',
                     hintText: 'you@somewhere.com',
                   ),
                   onSaved: (value) {
                     _email = value;
                   },
                 ),
                 TextFormField(
                   decoration: InputDecoration(
                     labelText: 'Password'
                   ),
                   onSaved: (value) {
                     _password = value;
                   },
                 ),
                 SizedBox(
                   width: double.infinity,
                   child: FlatButton(
                     child: Text('Login'),
                     onPressed: () {
                      _formKey.currentState.save();

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