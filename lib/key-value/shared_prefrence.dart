import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Sprefs extends StatefulWidget {
  const Sprefs({Key? key}) : super(key: key);

  @override
  _SprefsState createState() => _SprefsState();
}

class _SprefsState extends State<Sprefs> {
  String _string = 'New';

  @override
  void initState() {
    super.initState();
    _loadString();
  }

  void _loadString() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _string = (prefs.getString('string') ?? 'New');
      prefs.setString('string', _string);
    });
  }

  void _changeString() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _string = 'Not ' + (prefs.getString('string') ?? '') ;
      prefs.setString('string', _string);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _string,
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeString,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
