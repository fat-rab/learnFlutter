/*
 * @Author: your name
 * @Date: 2020-06-04 09:53:48
 * @LastEditTime: 2020-06-04 10:19:58
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\user\register1.dart
 */

import 'package:flutter/material.dart';

class Rigester1Page extends StatelessWidget {
  const Rigester1Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('注册1')),
      body: ListView(
        children: <Widget>[
          Container(
            child: RaisedButton(
              child: Text('下一步'),
              onPressed: () {
                //替换路由
                //Navigator.of(context).pushReplacementNamed('/rigester2');
                //普通路由
                Navigator.of(context).pushNamed('/rigester2');
              },
            ),
          ),
          Container(
            child: RaisedButton(
              child: Text('返回传参'),
              onPressed: () {
                //替换路由
                //Navigator.of(context).pushReplacementNamed('/rigester2');
                //普通路由
                Navigator.of(context).pop('返回上一级的参数');
              },
            ),
          ),
        ],
      ),
    );
  }
}
