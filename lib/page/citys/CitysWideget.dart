import 'package:flutter/material.dart';
import '../../utils/style.dart';

class CitysWidget extends StatefulWidget {
  @override
  _CitysWidgetState createState() => _CitysWidgetState();
}

class _CitysWidgetState extends State<CitysWidget> {
  String curCity;
  List<String> hotCitys = [
    '北京',
    '上海',
    '广州',
    '深圳',
    '成都',
    '武汉',
    '杭州',
    '重庆',
    '郑州',
    '南京',
    '西安',
    '苏州',
    '长沙',
    '天津',
    '福州'
  ];
  @override
  Widget build(BuildContext context) {
    curCity = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          '请选择城市',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        elevation: 1,
        centerTitle: false,
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              child: TabBar(
                unselectedLabelColor: Colors.black38,
                labelColor: Colors.black87,
                indicatorColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: <Widget>[
                  Tab(
                    text: '国内',
                  ),
                  Tab(
                    text: '海外',
                  )
                ],
              ),
            ),
            Gaps.line,
            Container(
              padding: EdgeInsets.only(bottom: 10,top: 10,left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.search,color: Colors.black54,),
                  Expanded(
                    child: TextField(
                      decoration: null,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: TabBarView(
                  physics: ClampingScrollPhysics(),
                  children: <Widget>[
                    Center(child: Text('国内')),
                    Center(child: Text('海外')),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
