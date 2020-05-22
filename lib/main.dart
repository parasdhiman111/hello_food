import 'package:flutter/material.dart';
import 'package:foodapp/root_page.dart';
import 'package:foodapp/splash_page.dart';

import 'authentication.dart';

void main() {
  runApp(new MyApp());
}


//void main() => runApp(ChangeNotifierProvider<Update>(
//  builder: (_) => Update(),
//  child: MyApp(),
//);


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Connect Each',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new RootPage(auth: new Auth())
      },


    );
  }
}