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
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Login Here',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Username:',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextField(
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password:',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            TextField(),
            SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              RaisedButton(
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.teal,
              ),
            ]),
          ],
        ),
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
