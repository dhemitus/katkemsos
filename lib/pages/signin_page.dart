import 'package:flutter/material.dart';

import 'package:flutter_katkemsos/style/style.dart';
import 'package:flutter_katkemsos/style/icon.dart';
import 'package:flutter_katkemsos/widgets/main_bar.dart';
import 'package:flutter_katkemsos/widgets/buttons/main_button.dart';
import 'package:flutter_katkemsos/widgets/buttons/text_button.dart';
import 'package:flutter_katkemsos/widgets/buttons/primary_button.dart';
import 'package:flutter_katkemsos/widgets/inputs/text_input.dart';
//import 'package:flutter_katkemsos/pages/map_page.dart';

class SignInPage extends StatefulWidget {

  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  bool _hide;
  String _username;
  String _password;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  _setUsername() => _username = _usernameController.text;
  _setPassword() => _password = _passwordController.text;

  _setSubmit() => print('$_username $_password');

  @override
  void initState() {
    _hide = true;
    super.initState();
    _usernameController.addListener(_setUsername);
    _passwordController.addListener(_setPassword);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.verybluelight,
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 90.0, horizontal: 40.0),
                child: Column(
                  children: <Widget>[
                    Text('Sign in', style: Style.h6.copyWith(color: Style.darkindigo),),
                    Text('Silakan Login', style: Style.subTitle1.copyWith(color: Style.darkindigo),)
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom:14.0),
                        child: TextInput(
                          controller: _usernameController,
                          labelText: 'Username',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom:14.0),
                        child: TextInput(
                          controller: _passwordController,
                          labelText: 'Password',
                          password: _hide,
                          suffixIcon: MainButton(icon: STIcon.eye, onPressed: (context) {
                            setState(() => _hide = !_hide);
                          }),
                        ),
                      ),
                      PrimaryButton(
                        label: 'Continue', 
                        onPressed: (context) => _setSubmit()
                      ),
                    ],
                  ),
                ),
              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height - 480.0),
                child: Column(
                  children: <Widget>[
                    Text('2019 Copyright Kementrian Sosial', style: Style.caption.copyWith(color: Style.cloudyblue),),
                    TextButton(
                      text: Text('Terms of Service', style: Style.caption.copyWith(color: Style.cloudyblue),),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top:25.0),
            child: MainBar(
              color: Style.verybluelight,
              align: MainAxisAlignment.spaceBetween,
              left: MainButton(icon: STIcon.arrowLeft, onPressed: (context) => Navigator.pop(context)),
            ),
          ),
        ],
      ),
    );
  }
}
