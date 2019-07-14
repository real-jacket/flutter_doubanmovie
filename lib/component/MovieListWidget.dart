import 'package:flutter/material.dart';

import './MovieData.dart';
import './MovieItemWidget.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MovieListWidget extends StatefulWidget {
  @override
  _MovieListWidgetState createState() => _MovieListWidgetState();
}

class _MovieListWidgetState extends State<MovieListWidget> {
  List<MovieData> movieDatas = new List<MovieData>();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    List<MovieData> serverDataList = List();
    var response = await http.get(
        "https://api.douban.com/v2/movie/in_theaters?apikey=0b2bdeda43b5688921839c8ecb20399b&city=广州&start=0&count=10");
    if (response.statusCode == 200) {
      var responseJson = json.decode(response.body);
      for (dynamic data in responseJson['subjects']) {
        MovieData movieData = MovieData.formJson(data);
        serverDataList.add(movieData);
      }
      setState(() {
        movieDatas = serverDataList;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (movieDatas == null || movieDatas.isEmpty) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
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
}
