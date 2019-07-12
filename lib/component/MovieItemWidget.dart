import 'package:flutter/material.dart';
import './MovieData.dart';

class MovieItemWidget extends StatefulWidget {
  final MovieData movieData;

  MovieItemWidget(this.movieData);
  @override
  _MovieItemWidgetState createState() => _MovieItemWidgetState();
}

class _MovieItemWidgetState extends State<MovieItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            widget.movieData.images,
            width: 80,
            height: 120,
            fit: BoxFit.contain,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.movieData.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    widget.movieData.rating.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    '导演： ' + widget.movieData.director,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    '主演： ' + widget.movieData.castsl,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 90,
            padding: EdgeInsets.only(left: 15,right: 15),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  color: Colors.red,
                  textColor: Colors.red,
                  highlightedBorderColor: Colors.red,
                  borderSide: BorderSide(color: Colors.red),
                  child: Text(
                    '购票',
                    style: TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                ),
                Text(
                  widget.movieData.watchedPeople.toString() + "万人看过",
                  style: TextStyle(color: Colors.red, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
