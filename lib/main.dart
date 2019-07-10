import 'package:flutter/material.dart';

import './page/hot/hot_home.dart';
import './page/member/member_home.dart';
import './page/movie/movie_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '豆瓣电影'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currenIndex = 0;

  final _widgetItems = [HotWidget(), MovieWidget(), MemberWidget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetItems[_currenIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currenIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text("热映")),
          BottomNavigationBarItem(
              icon: Icon(Icons.panorama_fish_eye), title: Text("找片")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("我的"))
        ],
        fixedColor: Colors.black,
        onTap: (e) {
          setState(() {
            _currenIndex = e;
          });
        },
      ),
    );
  }
}
