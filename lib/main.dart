import 'package:flutter/material.dart';
import 'package:hackaton/pages/desc.dart';
import 'package:hackaton/pages/main_screen.dart';
import 'package:hackaton/pages/project_page.dart';
import 'package:hackaton/pages/reg.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final String phone;

  const MyApp({Key key, this.phone}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'TTFirs',
        primaryColor: Colors.black,
      ),
      title: 'Hackathon',
      home: MainPage(),
      routes: <String, WidgetBuilder> {
        'project': (BuildContext context) => ProjectPage(),
        'main': (BuildContext context) => MainPage(),
        'desc': (BuildContext context) => DescPage(),
      },
    );
  }
}
