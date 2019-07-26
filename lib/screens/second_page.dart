import 'package:flutter/material.dart';
import 'package:flutter_login/common/common.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: Text('SecondPage')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SecondPage',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),

      bottomNavigationBar: MyBottomNavyBar(selectedIndex: 1,)
    );
  }
}
