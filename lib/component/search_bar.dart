import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  SearchBar({Key key, this.index = 0}) : super(key: key);

  final int index;
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: widget.index == 0
                ? Row(
                    children: <Widget>[
                      Text("北京"),
                      Icon(Icons.arrow_drop_down),
                    ],
                  )
                : null,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 8, bottom: 8),
                  hintText: "\uE8b6电影 / 电视剧 / 影人",
                  hintStyle:
                      TextStyle(fontFamily: "MaterialIcons", fontSize: 16),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  filled: true),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
