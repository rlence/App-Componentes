import 'package:componentes/src/page/alert_page.dart';
import 'package:componentes/src/page/avatar_page.dart';
import 'package:flutter/material.dart';
 
import 'package:componentes/src/page/home_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : (BuildContext context) => HomePage(),
        'alert':(BuildContext context) => AlertPage(),
        'avatar':(BuildContext context) => AvatarPage(),
      },
    );
  }

}