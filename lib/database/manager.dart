import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'dog.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Creating the database.

  final database = openDatabase(
    join(await getDatabasesPath(), 'doggie_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
      );
    },
    version: 1,
  );
  //CRUD

  //Inserting the dogs.
  Future<void> insertDog(Dog dog) async {
    final db = await database;

    await db.insert(
      'dogs',
      dog.toMap(),
      nullColumnHack: null,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //Retrieving the dogs.
  Future<List<Dog>> getDogs() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('dogs');

    return List.generate(
        maps.length,
        (index) => Dog(
              id: maps[index]['id'],
              name: maps[index]['name'],
              age: maps[index]['age'],
            ));
  }

// Updating the dogs.

  Future<void> updateDog(Dog dog) async {
    final db = await database;

    await db.update(
      'dogs',
      dog.toMap(),
      where: 'id = ?',
      whereArgs: [dog.id],
    );
  }

  // Deleting the dog.

  Future<void> deleteDog(int id) async {
    final db = await database;
    await db.delete(
      'dogs',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  //declaration
  var fido = Dog(
    id: 0,
    name: 'Fido',
    age: 35,
  );
  // inserting the dog
  await insertDog(fido);

  print(await getDogs());


  fido = Dog(
    id: fido.id,
    name: fido.name,
    age: fido.age + 7,
  );
  //updating the dog
  await updateDog(fido);
  print(await getDogs());

  await deleteDog(fido.id);

  print(await getDogs());
}
