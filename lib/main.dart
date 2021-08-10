import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  Widget calcRow(child1, child2, child3, child4) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RaisedButton(
          onPressed: () {},
          child: Text(
            child1,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            child2,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            child3,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(
            child4,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ],
    );
  }

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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  onPressed: () {},
                  child: Text('AC',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('%',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Icon(Icons.highlight_remove_sharp),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Text('/',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                ),
              ],
            ),
            calcRow(7.toString(), 8.toString(), 9.toString(), 'x'),
            calcRow(4.toString(), 5.toString(), 6.toString(), '-'),
            calcRow(1.toString(), 2.toString(), 3.toString(), '+'),
            calcRow(',', 0.toString(), '.'.toString(), '='),
          ],
        ),
      ),
      // body: Container(
      //   padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [
      //       Center(
      //         child: Text(
      //           'Login Here',
      //           style: TextStyle(
      //               fontSize: 30.0,
      //               fontWeight: FontWeight.normal,
      //               color: Colors.black),
      //         ),
      //       ),
      //       SizedBox(
      //         height: 50,
      //       ),
      //       TextField(
      //         decoration: InputDecoration(
      //             prefixIcon:  Icon(
      //               Icons.person,
      //               color: Colors.teal,
      //             ),
      //             labelText: 'UserName',
      //             border: OutlineInputBorder(
      //                 borderSide: BorderSide(color: Colors.teal))),
      //         keyboardType: TextInputType.text,
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       TextField(
      //
      //         decoration: InputDecoration(
      //             prefixIcon:  Icon(
      //               Icons.password_rounded,
      //               color: Colors.teal,
      //             ),
      //             labelText: 'Password',
      //             border: OutlineInputBorder(
      //                 borderSide: BorderSide(color: Colors.teal))),
      //       ),
      //       SizedBox(
      //         height: 20,
      //       ),
      //       Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      //         RaisedButton(
      //           onPressed: () {},
      //           child: Text(
      //             'Login',
      //             style: TextStyle(color: Colors.white),
      //           ),
      //           color: Colors.teal,
      //         ),
      //       ]),
      //     ],
      //   ),
      // ),
    );
  }
}
