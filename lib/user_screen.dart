import 'package:flutter/material.dart';
import 'package:flutter_mtap/user_manager.dart';

class UserScreen extends StatelessWidget {
  String name;
  String email;
  String password;
  var userList;

  UserScreen(this.name, this.email, this.password, this.userList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('Welcome $name'),
      ),
      body: Center(
        child: Column(
          children: [

            Container(
              height: 800,
              child: FutureBuilder<List<dynamic>>(
                  future: mainDbUser(
                      userList[0], userList[1], userList[2], userList[3]),
                  builder: (context, snapshot) {
                    if (snapshot.data == null) {
                      return Center(
                          child: CircularProgressIndicator(
                            color: Colors.brown,
                          ));
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, i) {
                          var index = (snapshot.data?.length ?? i) - i - 1;
                          return Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.person, size: 50,
                                    color: Colors.teal,),
                                  title: Text(snapshot.data?[index].name,
                                    style: TextStyle(fontSize: 22,
                                        fontWeight: FontWeight.bold),),
                                  subtitle: Text(snapshot.data?[index].email,
                                      style: TextStyle(fontSize: 17)),
                                ),
                                Divider(height: 10, color: Colors.teal,),
                              ]
                          );
                          ;
                        },
                      );
                    }
                  }),
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/calc_screen');
          },
        backgroundColor: Colors.teal,
          child: Container(
            child: Text('Calc'),
          ),
      ),
    );
  }
}
