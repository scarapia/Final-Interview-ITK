import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'dart:core';
import 'package:final_interview/tv-show-class.dart';


import 'package:http/http.dart' as http;

class Page2 extends StatefulWidget {
  Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTvShowsData();
  }

  getTvShowsData() async {
    var url = Uri.https('api.tvmaze.com', '/shows', {'q': '{https}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    String name;
  String language;
  List genres;
  String status;
    
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body) as List;
      
      //var itemCount = jsonResponse['totalItems'];
      print(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [Text("Tv Show: " //{TvShow(name: name, language: language, genres: genres, status: status)}
            )],
          )
        ],
      ),
    );
  }

  
}
