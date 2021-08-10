import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Generator'),
        ),
        body: Center(child: RandomWords()),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final  _suggestions = <WordPair>[];
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return _buildSuggestions();
  }
  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (context, i){
      if (i.isOdd) {
        return Divider();
      }
      final int index = i ~/ 2;
      if (index >= _suggestions.length) {
        print(_suggestions.length);
        _suggestions.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_suggestions[index]);
    });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}


