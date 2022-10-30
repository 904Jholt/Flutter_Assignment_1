// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  int count = 0;

  void incrementCounter() {
    setState(() {
      count++;
    });
  }

  void resetCounter() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ITSE 1333 Mobile Application Developement Program 1"),
        ),
        body: Column(children: [
          Text("You pressed the button $count times!",
              textAlign: TextAlign.center),
          ElevatedButton(
            onPressed: incrementCounter,
            child: Text("${count}"),
          ),
          Text("You pressed the button $count times!",
              textAlign: TextAlign.center),
          ElevatedButton(
            onPressed: incrementCounter,
            child: Text("${count}"),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
            onPressed: resetCounter,
            tooltip: "Reset",
            child: Icons.accessibility_new_rounded),
      ),
    );
  }
}
