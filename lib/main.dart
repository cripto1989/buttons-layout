import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screens/src/pages/basico_page.dart';
import 'package:screens/src/pages/buttons_page.dart';
import 'package:screens/src/pages/scroll_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'buttons',
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'buttons': (BuildContext context) => ButtonsPage(),
      }      
    );
  }
}