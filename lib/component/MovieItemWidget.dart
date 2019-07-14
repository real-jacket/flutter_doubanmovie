import 'package:flutter/material.dart';
import './MovieData.dart';

class MovieItemWidget extends StatefulWidget {
  final MovieData movieData;

  MovieItemWidget(this.movieData);
  @override
  _MovieItemWidgetState createState() => _MovieItemWidgetState();
}

class _MovieItemWidgetState extends State<MovieItemWidget> {
  String _getName(List<Cast> dataList) {
    String name = "";
    for (var item in dataList) {
      name += "/" + item.name;
    }
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            widget.movieData.images.medium,
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
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  Text(
                    widget.movieData.rating.average.toString(),
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  Text(
                    '导演： ' + _getName(widget.movieData.directors),
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Text(
                    '主演： ' + _getName(widget.movieData.casts),
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
            // padding: EdgeInsets.only(left: 15,right: 15),
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
                  widget.movieData.collectCount.toString() + "人看过",
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
