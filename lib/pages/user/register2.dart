/*
 * @Author: your name
 * @Date: 2020-06-04 09:53:54
 * @LastEditTime: 2020-06-04 10:15:24
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: \helloword\lib\pages\user\register2.dart
 */
import 'package:flutter/material.dart';
import '../../tab.dart';

class Rigester2Page extends StatelessWidget {
  const Rigester2Page({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('注册2')),
      body: Container(
        child: RaisedButton(
          child: Text('完成'),
          onPressed: () {
            //替换路由直接返回
            //Navigator.of(context).pop();
            //使用普通路由返回
            Navigator.of(context).pushAndRemoveUntil(
              new MaterialPageRoute(builder: (context) => new Tabs(index: 0)),
              (route) => route == null,
            );
          },
        ),
      ),
    );
  }
}
