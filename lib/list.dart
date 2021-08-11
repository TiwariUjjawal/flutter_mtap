import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        // Add the 3 lines from here...
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        // colorScheme: ColorScheme(
        //   brightness: Brightness.dark,
        //   background: Colors.greenAccent,
        //   secondaryVariant: Colors.cyan,
        //   error: Colors.red,
        //   onBackground: Colors.purple,
        //   onSecondary: Colors.grey,
        //   primaryVariant: Colors.purple,
        //   onSurface: Colors.amber,
        //   surface: Colors.blue, primary: Colors.lightBlue,
        //   onPrimary: Colors.black,
        //   secondary: Colors.blueAccent,
        //   onError: Colors.grey,
        // )
      ),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  void _pushSaved() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      final tiles = _saved.map(
        (WordPair pair) {
          return ListTile(
            title: Text(
              pair.asPascalCase,
            ),
          );
        },
      );
      final divided = tiles.isNotEmpty
          ? ListTile.divideTiles(context: context, tiles: tiles).toList()
          : <Widget>[];
      return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          brightness: Brightness.dark,
          elevation: 20,
          bottomOpacity: 1.0,
          bottom: PreferredSize(
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              // color: Colors.orange,
              height: 4,
            ),
            preferredSize: Size.fromHeight(4),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Saved Suggestions',
            style: TextStyle(color: Colors.white),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        body: ListView(children: divided),
      );
    }));
  }

  final _suggestions = <WordPair>[];
  final _saved = <WordPair>{};

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.black,
          brightness: Brightness.dark,
          elevation: 20,
          bottomOpacity: 1.0,
          bottom: PreferredSize(
            child: Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              // color: Colors.orange,
              height: 4,
            ),
            preferredSize: Size.fromHeight(4),
          ),
          backgroundColor: Colors.deepPurple,
          title: Text(
            'Startup Name Generator',
            style: TextStyle(color: Colors.white),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.list,
                  color: Colors.white,
                ),
                onPressed: _pushSaved),
          ],
        ),
        body: _buildSuggestions());
  }

  Widget _buildSuggestions() {
    return ListView.builder(itemBuilder: (context, i) {
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
    final alreadySaved = _saved.contains(pair);
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: TextStyle(fontSize: 30),
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}
