import 'package:flutter/material.dart';
import './list.dart';

void main() => runApp(MaterialApp(
      home: List(),
    ));

// class MyApp extends StatelessWidget {
//   Widget calcRow(child1, child2, child3, child4) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {},
//           child: Text(
//             child1,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {},
//           child: Text(
//             child2,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {},
//           child: Text(
//             child3,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {},
//           child: Text(
//             child4,
//             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//         title: Text(
//           'My App',
//           style: TextStyle(
//             fontFamily: 'IndieFlower',
//             fontSize: 25,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(bottom: 20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 RaisedButton(
//                   color: Colors.teal,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {},
//                   child: Text('AC',style: TextStyle(color:Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
//                 ),
//                 RaisedButton(
//
//                   color: Colors.grey[700],
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {},
//                   child: Text('%',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
//                 ),
//                 RaisedButton(
//                   color: Colors.red,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {},
//                   child: Icon(Icons.highlight_remove_sharp,),
//                 ),
//                 RaisedButton(
//                   color: Colors.grey[700],
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {},
//                   child: Text('/',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             calcRow(7.toString(), 8.toString(), 9.toString(), 'x'),
//             SizedBox(height: 20,),
//             calcRow(4.toString(), 5.toString(), 6.toString(), '-'),
//             SizedBox(height: 20,),
//             calcRow(1.toString(), 2.toString(), 3.toString(), '+'),
//             SizedBox(height: 20,),
//             calcRow(',', 0.toString(), '.'.toString(), '='),
//           ],
//         ),
//       ),
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
//     );
//   }
// }
