import 'package:final_interview/page-2-test.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'dart:core';

import 'package:http/http.dart' as http;

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Page2()),
  );}, child: Text("Display data")),
      ),
    );
  }
}
