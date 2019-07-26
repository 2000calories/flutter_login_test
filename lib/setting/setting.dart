import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/authentication/authentication.dart';
import 'package:flutter_login/common/common.dart';
import 'package:flutter_login/login/login.dart';
import 'package:user_repository/user_repository.dart';

class Setting extends StatefulWidget {
  Setting({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
    final userRepository = UserRepository();
  @override
  Widget build(BuildContext context) {
    final AuthenticationBloc authenticationBloc =
        BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
      appBar: MyAppBar(title: Text('Setting')),
      body: Center(
        child: RaisedButton(
        child: Text('logout'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => LoginPage(userRepository: userRepository)),
          );
          authenticationBloc.dispatch(LoggedOut());
        },
      )),
    );
  }
}
