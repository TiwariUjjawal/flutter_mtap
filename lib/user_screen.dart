import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  String name;
  String email;
  String password;

  UserScreen(this.name, this.email, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('Welcome $name'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.teal),
            child: Text('Go to Calc'),
            onPressed: () {
              Navigator.pushNamed(context, '/calc_screen');
            },
          ),
        ),
      ),
    );
  }
}
