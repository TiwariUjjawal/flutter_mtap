import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
          'My App',
          style: TextStyle(
            fontFamily: 'IndieFlower',
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Row(
        children: [
          Text('Hello'),
          OutlinedButton(
            onPressed: () {},
            child: Text('Click It'),
          ),
          Text('GO'),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Text(
          'Hey',
          style: TextStyle(
            fontFamily: 'IndieFlower',
            // fontSize: 25,
            // fontWeight: FontWeight.bold,
            // color: Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
