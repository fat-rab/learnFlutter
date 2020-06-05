/*
 * @Author: your name
 * @Date: 2020-06-03 14:05:19
 * @LastEditTime: 2020-06-04 13:31:24
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\tabPages\detail.dart
 */

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: TabBar(
          tabs: <Widget>[
            Tab(text: '热销'),
            Tab(text: '推荐'),
          ],
        )),
        body: TabBarView(
          children: <Widget>[
            ListView(children: <Widget>[
              ListTile(
                title: Text('第一个'),
              )
            ]),
            ListView(children: <Widget>[
              ListTile(
                title: Text('第二个'),
              )
            ])
          ],
        ),
      ),
    );
  }
}
