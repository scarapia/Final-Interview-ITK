class TvShow {
  String name;
  String language;
  List genres;
  String status;
  TvShow({required this.name, required this.language, required this.genres, required this.status});

  factory TvShow.fromJson(Map<String, dynamic> json) {
    return TvShow(
      name: json['name'],
      language: json['language'],
      genres: json['genres'],
      status: json['status'],
    );
  }
}