import 'package:flutter/material.dart';

import 'package:flutter_login/setting/setting.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Home'),
        actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => Setting()),
            );
          },
        )
      ],
      ),
      body: Center(
        child: Text('Hone')
      )
    );
  }
}