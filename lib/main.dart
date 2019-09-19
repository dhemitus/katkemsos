import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_katkemsos/style/style.dart';
import 'package:flutter_katkemsos/pages/route_page.dart';
import 'package:flutter_katkemsos/services/service_locator.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Style.black.withOpacity(0.3),
  ));
  setup();
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SIKAT Kemsos',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: RoutePage(),
    );
  }
}
