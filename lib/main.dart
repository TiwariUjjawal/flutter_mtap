import 'package:flutter/material.dart';
import 'calc_and_loginScreen/login_screen.dart';
import 'calc_and_loginScreen/Calc.dart';

void main() {
  // mainDb();
  runApp(MaterialApp(
    // home: Sprefs(),
    initialRoute: '/',
    routes: {
      '/': (context) => LoginScreen(),
      '/calc_screen': (context) => Calc(),
    },
  ));
}

// import 'package:flutter_mtap/switch.dart';
// import 'package:flutter_mtap/TooltipExample.dart';
// import './list.dart';
// import './MySliderApp.dart';
// import './FirstScreen.dart';
//
// class Todo {
//   final String title;
//   final String description;
//
//   const Todo(this.title, this.description);
// }
//
// void main() {
//   runApp(
//     MaterialApp(
//       title: 'Passing Data',
//       home: TodosScreen(
//         todos: List.generate(
//           20,
//               (i) => Todo(
//             'Todo $i',
//             'A description of what needs to be done for Todo $i',
//           ),
//         ),
//       ),
//     ),
//   );
// }
//
// class TodosScreen extends StatelessWidget {
//   const TodosScreen({Key? key, required this.todos}) : super(key: key);
//
//   final List<Todo> todos;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Todos'),
//       ),
//       body: ListView.builder(
//         itemCount: todos.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(todos[index].title),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => DetailScreen(todos[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class DetailScreen extends StatelessWidget {
//   final Todo todo;
//   DetailScreen(this.todo);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(todo.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Text(todo.description),
//       ),
//     );
//   }
// }

// void main() => runApp(MaterialApp(
//       title: 'Routes',
//       home: HomeScreen(),
//       routes: {
//         // '/': (context) => FirstScreen(),
//         // '/second': (context) => SecondScreen(),
//         ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
//       },
//       onGenerateRoute: (settings) {
//         if (settings.name == PassArgumentsScreen.routeName) {
//           final args = settings.arguments as ScreenArguments;
//           return MaterialPageRoute(
//             builder: (context) {
//               return PassArgumentsScreen(
//                 title: args.title,
//                 message: args.message,
//               );
//             },
//           );
//         }
//         assert(false, 'Need to implement ${settings.name}');
//         return null;
//       },
//     ));

//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Returning Data Demo'),
//       ),
//       // Create the SelectionButton widget in the next step.
//       body: const Center(
//         child: SelectionButton(),
//       ),
//     );
//   }
// }
// class SelectionButton extends StatelessWidget {
//   const SelectionButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         _navigateAndDisplaySelection(context);
//       },
//       child: const Text('Pick an option, any option!'),
//     );
//   }
//
//   void _navigateAndDisplaySelection(BuildContext context) async {
//     // Navigator.push returns a Future that completes after calling
//     // Navigator.pop on the Selection Screen.
//     final result = await Navigator.push(
//       context,
//       // Create the SelectionScreen in the next step.
//       MaterialPageRoute(builder: (context) => const SelectionScreen()),
//     );
//     ScaffoldMessenger.of(context)
//       ..removeCurrentSnackBar()
//       ..showSnackBar(SnackBar(content: Text('$result')));
//   }
// }
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   String val = '';
//   String query = '';
//   var history = ['22 x 66', '984 / 43'];
//   var calcList = [];
//   String calcQuery = '';
//
//   Widget calcRow(child1, child2, child3, child4) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {
//             val = child1;
//             calcQuery += val;
//             setState(() {
//               query += val;
//             });
//           },
//           child: Text(
//             child1,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {
//             val = child2;
//
//             calcQuery += val;
//             setState(() {
//               query += val;
//             });
//           },
//           child: Text(
//             child2,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {
//             val = child3;
//             calcQuery += val;
//             setState(() {
//               query += val;
//             });
//           },
//           child: Text(
//             child3,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//         RaisedButton(
//           color: Colors.grey[700],
//           // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
//           onPressed: () {
//             val = child4;
//             if (val == '=') {
//               calcList.add(calcQuery);
//               print(calcList);
//               var result = calculation(calcList);
//               setState(() {
//                 history.add(query);
//                 query = result.toString();
//                 calcQuery = query;
//                 calcList.clear();
//                 calcList.add(calcQuery);
//                 // print(result);
//               });
//             } else {
//               calcList.add(calcQuery);
//               calcList.add(val);
//               calcQuery = '';
//               setState(() {
//                 query = query + ' ' + val + ' ';
//               });
//             }
//           },
//           child: Text(
//             child4,
//             style: TextStyle(
//                 fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }
//
//   double answer(val1, val2, op) {
//     var result;
//     if (op == '+') {
//       result = val1 + val2;
//       op = '';
//     } else if (op == '-') {
//       result = val1 - val2;
//       op = '';
//     } else if (op == 'x') {
//       result = val1 * val2;
//       op = '';
//     } else if (op == '/') {
//       result = val1 / val2;
//       op = '';
//     }
//     else if (op == '%') {
//       result = val1 % val2;
//       op = '';
//     }
//     // print('==============');
//     // print(val1);
//     // print(op);
//     // print(val2);
//     // print('==============');
//     // print(result);
//     return result;
//   }
//   String calculation(calcList) {
//     var op = '';
//     double val1 = 0;
//     double val2 = 0;
//     bool atLeastTwoItems = false;
//     // bool callAnswer = false;
//     for (var item in calcList) {
//       // print(item);
//       if (item == '+' || item == '-' || item == 'x' || item == '/' || item == '%') {
//         op = item;
//         // print(op);
//         // print('item in op');
//       } else if (op == '') {
//         val1 = double.parse(item);
//         atLeastTwoItems = true;
//       } else if (atLeastTwoItems) {
//         val2 = double.parse(item);
//         val1 = answer(val1, val2, op);
//       }
//     }
//     return val1.toString();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//         title: Text(
//           'Calc',
//           style: TextStyle(
//             // fontFamily: 'IndieFlower',
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
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Text(
//                 'History',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//             Container(
//               height: 370,
//               child: ListView.builder(
//                   itemCount: history.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       onTap: () {
//                         setState(() {
//                           query = history[index];
//                         });
//                       },
//                       title: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(history[index]),
//                             Divider(
//                               height: 10,
//                               color: Colors.black,
//                             )
//                           ]),
//                     );
//                   }),
//             ),
//             Container(
//               color: Colors.blue,
//               // height: MediaQuery.of(context).size.height * 0.,
//               width: MediaQuery.of(context).size.width,
//               child: Text(
//                 query,
//                 style: TextStyle(
//                   fontSize: 40,
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 RaisedButton(
//                   color: Colors.teal,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {
//                     setState(() {
//                       history.add(query);
//                       query = '';
//                     });
//                   },
//                   child: Text(
//                     'AC',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20),
//                   ),
//                 ),
//                 RaisedButton(
//                   color: Colors.grey[700],
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {
//                     val = '%';
//                     calcList.add(calcQuery);
//                     calcList.add(val);
//                     calcQuery = '';
//                     setState(() {
//                       query = query + ' ' + val + ' ';
//                     });
//                   },
//                   child: Text(
//                     '%',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: Colors.white),
//                   ),
//                 ),
//                 RaisedButton(
//                   color: Colors.red,
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {
//                     setState(() {
//                       history.add(query);
//                       query = '';
//                     });
//                   },
//                   child: Icon(
//                     Icons.highlight_remove_sharp,
//                   ),
//                 ),
//                 RaisedButton(
//                   color: Colors.grey[700],
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80)),
//                   onPressed: () {
//                     val = '/';
//                     calcList.add(calcQuery);
//                     calcList.add(val);
//                     calcQuery = '';
//                     setState(() {
//                       query = query + ' ' + val + ' ';
//                     });
//                   },
//                   child: Text(
//                     '/',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             calcRow(7.toString(), 8.toString(), 9.toString(), 'x'),
//             SizedBox(
//               height: 20,
//             ),
//             calcRow(4.toString(), 5.toString(), 6.toString(), '-'),
//             SizedBox(
//               height: 20,
//             ),
//             calcRow(1.toString(), 2.toString(), 3.toString(), '+'),
//             SizedBox(
//               height: 20,
//             ),
//             calcRow(',', 0.toString(), '.'.toString(), '='),
//           ],
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Center(
//               child: Text(
//                 'Login Here',
//                 style: TextStyle(
//                     fontSize: 30.0,
//                     fontWeight: FontWeight.normal,
//                     color: Colors.black),
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                   prefixIcon:  Icon(
//                     Icons.person,
//                     color: Colors.teal,
//                   ),
//                   labelText: 'UserName',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.teal))),
//               keyboardType: TextInputType.text,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextField(
//
//               decoration: InputDecoration(
//                   prefixIcon:  Icon(
//                     Icons.password_rounded,
//                     color: Colors.teal,
//                   ),
//                   labelText: 'Password',
//                   border: OutlineInputBorder(
//                       borderSide: BorderSide(color: Colors.teal))),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//               RaisedButton(
//                 onPressed: () {},
//                 child: Text(
//                   'Login',
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 color: Colors.teal,
//               ),
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }
