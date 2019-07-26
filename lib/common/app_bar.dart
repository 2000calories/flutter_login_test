import 'package:flutter/material.dart';
import 'package:flutter_login/setting/setting.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget  {
  final title;

  MyAppBar({Key key,this.title}) : preferredSize = Size.fromHeight(kToolbarHeight),super(key: key);
  @override
  final Size preferredSize; // default is 56.0
  _MyAppBarState createState() => _MyAppBarState(title:title);
}

class _MyAppBarState extends State<MyAppBar>  {
  final title;

  _MyAppBarState(
    {@required this.title,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(55, 167, 151, 1.0),
      title: title,
      centerTitle: true,
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
    );
  }
}