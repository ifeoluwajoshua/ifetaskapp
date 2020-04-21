import 'package:flutter/material.dart';
import 'package:ifetaskapp/models/User.dart';

class NavPage extends StatelessWidget {
  final User post;

  NavPage({@required this.post});

  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero' ,
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/image.png',),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          title: Text('User Details'),
          backgroundColor:  Colors.black12,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                logo,
                SizedBox(height: 50.0),
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("ID"),
                      subtitle: Text("${post.id}"),
                      ),
                      ListTile(
                        title: Text("Name"),
                        subtitle: Text(post.name),
                      ),
                      ListTile(
                        title: Text("Username"),
                        subtitle: Text("${post.username}"),
                      ),
                      ListTile(
                        title: Text("Email"),
                        subtitle: Text(post.email),
                      ),
                      ListTile(
                        title: Text("Phone number"),
                        subtitle: Text("${post.phone}"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}