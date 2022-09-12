import 'package:final_interview/tv-widget.dart';
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
  var qtyOfTvShows;
  var jsonResponse;
  var jsonResponseIndex;
  var isLoading = true;
  var temp;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTvShowsData();
  }

  Future getTvShowsData() async {
    var url = Uri.https('api.tvmaze.com', '/shows', {'q': '{https}'});

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    String name;
    String language;
    List genres;
    String status;

    if (response.statusCode == 200) {
      jsonResponse = convert.jsonDecode(response.body) as List;
      temp = jsonResponse;

      setState(() {
        isLoading = false;
      });

      //var itemCount = jsonResponse['totalItems'];
      print(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? const Center(child: CircularProgressIndicator.adaptive())
          : Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: jsonResponse.length,
                    itemBuilder: (bc, index) {
                      return Text("Tv show in index :" + [index].toString());
                      // (TvWidget(
                      //     name: jsonResponse['name'].toString(),
                      //     language: jsonResponse['language'].toString(),
                      //     genres: jsonResponse['genres'],
                      //     status: ['status'].toString()));
                    }),
              ),
            ),
    );
  }
}
