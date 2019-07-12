import 'package:flutter/material.dart';

import './MovieData.dart';
import './MovieItemWidget.dart';

class MovieListWidget extends StatefulWidget {
  @override
  _MovieListWidgetState createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  List<MovieData> movieDatas = new List<MovieData>();

  @override
  void initState() {
    super.initState();
    var data = MovieData(
        "看不见的客人",
        8.8,
        "奥里奥尔·保罗",
        "马里奥·卡萨斯/阿娜·瓦格纳/何塞·科罗纳多/巴巴拉·莱涅/弗兰塞斯克·奥雷利",
        5,
        "https://img3.doubanio.com/view/photo/l/public/p2449229311.webp");

    setState(() {
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
      movieDatas.add(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: ListView.separated(
        itemCount: movieDatas.length,
        itemBuilder: (context, index) {
          return MovieItemWidget(movieDatas[index]);
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: Colors.black26,
          );
        },
      ),
    );
  }
}
