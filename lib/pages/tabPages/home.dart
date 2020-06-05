/*
 * @Author: your name
 * @Date: 2020-06-03 13:40:39
 * @LastEditTime: 2020-06-04 10:29:29
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\tabPages\home.dart
 */
import 'package:flutter/material.dart';
import '../apiPages/routerpage.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: RaisedButton(
            child: Text('路由传参'),
            color: Colors.blue,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RouterPage(
                    title: '基础路由跳转',
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          child: RaisedButton(
            child: Text('statelesswidget传参'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/statelessRoutePage',
                arguments: {'title': 'statelesswidget传参'},
              );
            },
          ),
        ),
        Container(
          child: RaisedButton(
            child: Text('statefulwidget传参'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/statefulRoute',
                arguments: {'title': 'statefulwidget传参'},
              );
            },
          ),
        ),
        Container(
          child: RaisedButton(
            child: Text('注册(替换路由和根路由)'),
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, '/rigester1');
            },
          ),
        ),
      ],
    );
  }
}
