import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'user.dart';

 Future<List<User>> mainDbUser(id, name, email, password) async {
  WidgetsFlutterBinding.ensureInitialized();

  // Creating the database.

  final database = openDatabase(
    join(await getDatabasesPath(), 'user_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE users(id TEXT PRIMARY KEY, name TEXT, email TEXT, password TEXT)',
      );
    },
    version: 1,
  );
  //CRUD

  //Inserting the users.
  Future<void> insertUser(User user) async {
    final db = await database;

    await db.insert(
      'users',
      user.toMap(),
      nullColumnHack: null,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  //Retrieving the users.
  Future<List<User>> getUsers() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('users');

    return List.generate(
        maps.length,
            (index) => User(
          id: maps[index]['id'],
          name: maps[index]['name'],
          email: maps[index]['email'],
          password: maps[index]['password'],
        ));
  }

// Updating the users.

  Future<void> updateUser(User user) async {
    final db = await database;

    await db.update(
      'users',
      user.toMap(),
      where: 'id = ?',
      whereArgs: [user.id],
    );
  }

  // Deleting the user.

  Future<void> deleteUser(int id) async {
    final db = await database;
    await db.delete(
      'users',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // bool check = false;
  //
  // Future<void> checkUser(User user) async {
  //   final db = await database;
  //   await db.query('users', where: 'email = ? and password = ?' , whereArgs: [email, password]);
  //
  // }

  var person = User(
    id: id,
    name: name,
    email: email,
    password: password,
  );

  await insertUser(person);

  print(await getUsers());

  //declaration
  // var fido = Dog(
  //   id: 0,
  //   name: 'Fido',
  //   age: 35,
  // );
  // // inserting the dog
  // await insertDog(fido);
  //
  // print(await getDogs());
  //
  //
  // fido = Dog(
  //   id: fido.id,
  //   name: fido.name,
  //   age: fido.age + 7,
  // );
  // //updating the dog
  // await updateDog(fido);
  // print(await getDogs());
  //
  // await deleteDog(fido.id);
  //
  // print(await getDogs());
  return getUsers();
}
