/*
 * @Author: your name
 * @Date: 2020-06-03 17:41:47
 * @LastEditTime: 2020-06-03 18:04:09
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\apiPages\statefulRoutePage.dart
 */

import 'package:flutter/material.dart';

class StatefulRoutePage extends StatefulWidget {
  final Map arguments;
  StatefulRoutePage({Key key, this.arguments}) : super(key: key);

  @override
  _StatefulRoutePageState createState() =>
      _StatefulRoutePageState(arguments: this.arguments);
}

class _StatefulRoutePageState extends State<StatefulRoutePage> {
  Map arguments;
  _StatefulRoutePageState({this.arguments});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('有状态组件路由传参'),
      ),
      body: Container(
        child: Text(this.arguments['title']),
      ),
    );
  }
}
