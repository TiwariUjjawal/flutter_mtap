import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

void main() {
  runApp(
    MaterialApp(
      title: 'Reading and Writing Files',
      home: ReadWrite(ContentStorage()),
    ),
  );
}

class ContentStorage {

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/content.txt');
  }

  Future<File> writeContent(int content) async {
    final file = await _localFile;
    return file.writeAsString('$content');
  }

  Future<int> readContent() async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      print(contents);
      return int.parse(contents);
    }
    catch(e){
      return 0;
    }
  }

}

class ReadWrite extends StatefulWidget {
  late final ContentStorage storage;
  ReadWrite(this.storage);
  @override
  _ReadWriteState createState() => _ReadWriteState();



}

class _ReadWriteState extends State<ReadWrite> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    widget.storage.readContent().then((int value) {
      setState(() {
        _counter = value;
      });
    });
  }

  Future<File> _incrementCounter() {
    setState(() {
      _counter++;
    });

    // Write the variable as a string to the file.
    return widget.storage.writeContent(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading and Writing Files'),
      ),
      body: Center(
        child: Text(
          'Button tapped $_counter time${_counter == 1 ? '' : 's'}.',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
