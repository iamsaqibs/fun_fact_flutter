import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    home: MyApp(),
  )
);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Did You Know?'              
            ),

            Text(
              'questions'
            )
          ],
        ),
      ),

    );
  }
}