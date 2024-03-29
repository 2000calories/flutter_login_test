import 'package:flutter/material.dart';
import 'package:flutter_login/common/common.dart';

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
      appBar:MyAppBar(title: Text('Home')),
      body: Center(
        child: Text('Home')
      ),
      bottomNavigationBar: MyBottomNavyBar(selectedIndex: 0,)
    );
  }
}