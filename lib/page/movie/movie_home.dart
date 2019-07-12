import 'package:flutter/material.dart';

import '../../component/SearchBar.dart';
import '../../utils/style.dart';

class MovieWidget extends StatefulWidget {
  @override
  _MovieWidgetState createState() => _MovieWidgetState();
}

class _MovieWidgetState extends State<MovieWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SearchBar(index: 1,),
        Expanded(
            child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.black12,
                labelColor: Colors.black87,
                indicatorColor: Colors.black87,
                tabs: <Widget>[Tab(text: "电影"), Tab(text: "电视")],
              ),
              Gaps.line,
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: <Widget>[
                      Center(
                        child: Text('电影'),
                      ),
                      Center(
                        child: Text('电视'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}