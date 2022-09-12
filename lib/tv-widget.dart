import 'package:flutter/material.dart';

class TvWidget extends StatefulWidget {
  TvWidget(
      {Key? key,
      required this.name,
      required this.language,
      required this.genres,
      required this.status})
      : super(key: key);
  String name;
  String language;
  List genres;
  String status;

  @override
  State<TvWidget> createState() => _TvWidgetState();
}

class _TvWidgetState extends State<TvWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
            "${widget.name}${widget.language}${widget.genres}${widget.status}"),
      ],
    );
  }
}
