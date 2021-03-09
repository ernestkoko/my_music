import 'package:flutter/material.dart';
import 'package:my_music/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'MyMusic',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Center(
          child: ColoredBox(
            color: Colors.red,
            child: HomePage(),
          ),
        ));
  }
}
