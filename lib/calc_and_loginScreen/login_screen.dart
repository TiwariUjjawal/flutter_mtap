import 'package:flutter_mtap/calc_and_loginScreen/register_screen.dart';
import 'package:flutter_mtap/calc_and_loginScreen/user_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Calc.dart';
import 'user_screen.dart';
import 'package:flutter/material.dart';

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

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  var _name;
  var _email;
  var _password;

  setCreds(email, password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('$email', password);
  }

  checkCreds(email, password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey(email)) {
      String passwordPrefs = await getCreds(email);
      if (passwordPrefs == password) {
        print('exists');
        return true;
      } else {
        print('Not exists');
        return false;
      }
    }
  }

  getCreds(email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String password = prefs.getString('$email') ?? '';
    return password;
  }

  //
  // getUserList(id, name, email, password) async {
  //   var userList = await
  //   return userList;
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(250),
      // AppBar(
      //   brightness: Brightness.dark,
      //   title: Text('Login'),
      //   backgroundColor: Colors.teal,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.teal,
                      ),
                      labelText: 'Name',
                      hintText: 'Enter your Name',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Name is required.';
                    }
                  },
                  onSaved: (String? value) {
                    _name = value;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      labelText: 'Email Id',
                      hintText: 'Enter your Email ID',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                  keyboardType: TextInputType.text,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }

                    if (!RegExp(
                            "^[a-zA-Z0-9.!#%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*")
                        .hasMatch(value)) {
                      return 'Enter a valid email address';
                    }
                    return null;
                  },
                  onSaved: (String? value) {
                    _email = value;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.teal,
                      ),
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                  // keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }
                  },
                  onSaved: (String? value) {
                    _password = value;
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.teal,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                        child: Text('Register'),
                      ),
                      RaisedButton(
                          color: Colors.teal,
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          onPressed: () async {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                            _formKey.currentState!.save();
                            var userList = [_email, _name, _email, _password];
                            var check = await checkCreds(_email, _password);
                            if (check) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => UserScreen(
                                          _name, _email, _password, userList)));
                            }
                            if (check == false) {
                              return showDialog<void>(
                                context: context,
                                barrierDismissible: false,
                                // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text(
                                      'Credentials Mismatch',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: const <Widget>[
                                          Text(
                                              'Email and Password do not match.'),
                                          Text(
                                              'Please enter correct credentials.'),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: const Text('Ok'),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                            // mainDbUser(id, name, email, password);
                          }),
                    ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  double height;

  CustomAppBar(this.height);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 20),
          height: height,
          width: double.infinity,
          decoration: BoxDecoration(
            // shape: BoxShape.rectangle,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
            color: Colors.teal,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  'Login Screen',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
