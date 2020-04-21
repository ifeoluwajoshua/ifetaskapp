import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ifetaskapp/API.dart';
import 'package:ifetaskapp/NavPage.dart';
import 'package:ifetaskapp/models/User.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ife api getter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyListScreen(),
    );
  }
}

class MyListScreen extends StatefulWidget {
  @override
  createState() => _MyListScreenState();
}

class _MyListScreenState extends State {
  var users = new List<User>();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User List"),
          backgroundColor: Colors.black12,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {

            return ListTile(
              leading: Image.asset('assets/image.png',),//Image(
                title: Text(users[index].name),
                subtitle: Text(users[index].email),

                onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => NavPage(
                            post: users[index],

                          ),
                        ),
                      ),
            );
          },
        ));
        
  }
}


