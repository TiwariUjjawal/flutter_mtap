import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int label = 0;
  List<Color> clr = [Colors.amber, Colors.blue, Colors.grey, Colors.cyanAccent];

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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 90, horizontal: 10),
        color: clr[label%4],
        child: Center(
            child: RaisedButton.icon(
          color: Colors.teal,
          icon: Icon(Icons.add),
          label: Text('Clicked $label times'),
          onPressed: () {
            setState(() {
              label += 1;
            });
          },
        )),
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
