import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main() => runApp(new MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var fact = 'Please Wait While Fact is Loading';
  @override
  void initState() {
    super.initState();
    getFact();
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Did You Know?',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                fact,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
              RaisedButton(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Show Another Fun Fact!',
                    style: TextStyle(),
                  ),
                ),
                onPressed: () {
                  getFact();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future getFact() async{
    var response = await get('https://uselessfacts.jsph.pl/random.json?language=en');
    var json = convert.jsonDecode(response.body);
    setState(() {
      fact = json['text'];
    });
  }
}
