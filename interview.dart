import 'dart:convert' as convert;
import 'dart:core';

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  var url = Uri.https('api.tvmaze.com', '/shows', {'q': '{https}'});

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as List;
    //var itemCount = jsonResponse['totalItems'];
    //print(response.body);
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

// class TvShow {
//   String name;
//   String language;
//   List genres;
//   String status;
//   TvShow({required this.name, required this.language, required this.genres, required this.status});

//   factory TvShow.fromJson(Map<String, dynamic> json) {
//     return TvShow(
//       name: json['name'],
//       language: json['language'],
//       genres: json['genres'],
//       status: json['status'],
//     );
//   }
// }
