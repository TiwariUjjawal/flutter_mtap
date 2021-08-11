import 'package:flutter/material.dart';

class ToolTip extends StatefulWidget {
  @override
  _ToolTipState createState() => _ToolTipState();
}

class _ToolTipState extends State<ToolTip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tooltip Example"),
      ),
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  waitDuration: Duration(seconds: 5),
                  // showDuration: Duration(seconds: 2, minutes: , hours),
                  padding: EdgeInsets.all(5),
                  height: 35,
                  textStyle: TextStyle(
                      fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.green),
                  message: 'My Account',
                  child: FlatButton(
                    onPressed: (){},
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Tooltip(
                  message: 'My Account',
                  child: FlatButton(
                    onPressed: (){},
                    child: Icon(
                      Icons.account_box,
                      size: 100,
                    ),
                  )
              ),
            )
          ]
      ),
    );
  }
}