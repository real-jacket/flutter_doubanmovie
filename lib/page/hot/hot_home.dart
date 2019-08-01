import 'package:flutter/material.dart';

import '../../component/SearchBar.dart';
import '../../utils/style.dart';
import '../../component/MovieListWidget.dart';

class HotWidget extends StatefulWidget {
  @override
  _HotWidgetState createState() => _HotWidgetState();
}

class _HotWidgetState extends State<HotWidget> {
  String curCity = '深圳';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SearchBar(city:curCity),
        Expanded(
            child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelColor: Colors.black38,
                labelColor: Colors.black87,
                indicatorColor: Colors.black87,
                tabs: <Widget>[Tab(text: "正在热映"), Tab(text: "即将上映")],
              ),
              Gaps.line,
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: <Widget>[
                      MovieListWidget(curCity),
                      Center(
                        child: Text('即将上映'),
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
