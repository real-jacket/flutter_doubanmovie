import 'package:flutter/material.dart';

import '../../component/search_bar.dart';
import '../../utils/style.dart';


class HotWidget extends StatefulWidget {
  @override
  _HotWidgetState createState() => _HotWidgetState();
}

class _HotWidgetState extends State<HotWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SearchBar(),
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
                tabs: <Widget>[Tab(text: "正在热映"), Tab(text: "即将上映")],
              ),
              Gaps.line,
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: <Widget>[
                      Center(
                        child: Text('正在热映'),
                      ),
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
