import 'package:flutter/material.dart';

class MyBottomNavyBar extends StatefulWidget {
  MyBottomNavyBar({Key key,this.selectedIndex}) : super(key: key);

  final int selectedIndex;

  @override
  _MyBottomNavyBarState createState() => _MyBottomNavyBarState(selectedIndex:selectedIndex);
}

class _MyBottomNavyBarState extends State<MyBottomNavyBar>  {
  _MyBottomNavyBarState(
    {@required this.selectedIndex,});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: selectedIndex,
        onTap: (value){
          switch (value){
            case 0: 
              return Navigator.of(context).pushNamed('/home');
            case 1: 
              return Navigator.of(context).pushNamed('/secondPage');
            default: return Navigator.of(context).pushNamed('/home');
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.schedule),
              title: Text('SecondPage'),
          ),
        ],
      );
  }
}

