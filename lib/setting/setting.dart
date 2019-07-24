import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/authentication/authentication.dart';

class Setting extends StatefulWidget {
  Setting({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: Center(
        child: RaisedButton(
        child: Text('logout'),
        onPressed: () {
          authenticationBloc.dispatch(LoggedOut());
        },
      )),
    );
  }
}
